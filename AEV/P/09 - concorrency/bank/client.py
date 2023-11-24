import os

os.fork() #2
os.fork() #4
os.fork() #8
os.fork() #16
os.fork() #32
os.fork() #64
os.fork() #128
os.fork() #256

os.popen('wget http://127.0.0.1:8080?wd=10 -O  /dev/null -q').read()

