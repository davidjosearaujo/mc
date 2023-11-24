from threading import Thread
from multiprocessing import Queue
import sqlite3, sys, time, datetime, logging
import os
import random

import cherrypy

class DB(Thread):
    def __init__(self, db):
        super(DB, self).__init__()
        self.db=db
        self.reqs=Queue()
        self.start()
    def run(self):
        cnx = sqlite3.Connection(self.db) 
        cursor = cnx.cursor()
        while True:
            req = self.reqs.get()
            if req=='--close--': break
            elif req=='--commit--': cnx.commit()
            try:
                cursor.executescript(req) if ';' in req else cursor.execute(req)
            except sqlite3.OperationalError as err:
                logging.exception("DB")
        cnx.close()
    def execute(self, req):
        self.reqs.put(req)
    def queries(self):
        return self.reqs.qsize()
    def empty(self):
        return self.reqs.empty()

    def select(self, req,  results=0):
        cnx = sqlite3.Connection(self.db)
        cursor = cnx.cursor()
        try:
            if results == 0:
                r = cursor.execute(req+";")
                ret = [x for x in cursor.fetchall()]
                cnx.close()
                return  ret
            else:
                cursor.execute(req+";")
                ret = [x for x in cursor.fetchall()[:results]]
                cnx.close()
                return  ret
        except:
            logging.exception("SELECT")
            cnx.close()
    def commit(self):
        self.execute("--commit--")
    def close(self):
        self.execute('--close--')

class Server:

    def __init__(self):
        self.db = DB('db.sqlite')

    @cherrypy.expose
    def index(self, restore=None, wd=None):
        result = ""
        
        if restore is not None and cherrypy.request.method == 'POST':
            self.setBalance(10000)
            raise cherrypy.HTTPRedirect("/")
        elif wd is not None:
            result += self.withdraw(wd)

        result += f"Current balance: {self.getBalance()}"
        result += '<form method="post"><input type="submit" name="restore" value="Reset Balance" /></form> add ?wd=x to withdraw $x'
        return result

    def withdraw(self, amount):
        print(f"Withdraw: {amount}")

        amount = int(amount)

        balance = self.getBalance();

        if amount <= balance:
            
            balance = balance - amount;
            
            f = open("log.txt", "a")
            f.write(f"Withdrawn: {amount} Balance: {balance}\n")
            f.close()

            self.setBalance(balance)
            return f"You have withdrawn: {amount} <br />"
        else:
            return "Insufficient funds."

    def doWork(self, amount = 1000):
        i = 0
        while i < 1000:
            i = i + 1

    def setBalance(self, x):
        print(f"setBalance: {x}")
        x = int(x)
        print(f"UPDATE moneyz SET balance={x}")
        self.db.execute(f"UPDATE moneyz SET balance={x}")
        self.db.commit()

    def getBalance(self):
        print("Get Balance: ", end='')
        r = self.db.select("SELECT balance FROM moneyz")
        return r[0][0]

cherrypy.config.update({
    'server.thread_pool': 150
})

cherrypy.quickstart(Server(), '/')

