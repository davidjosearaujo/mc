import sqlite3

# Dump all firefox cookies or the ones attached to a given domain name
def dump(db_path, domain=None):
    conn = sqlite3.connect(db_path)
    cur = conn.cursor()
    if domain:
        cur.execute("SELECT name, value FROM moz_cookies WHERE host=?", (domain,))
    else:
        cur.execute("SELECT name, value, host FROM moz_cookies")
    rows = cur.fetchall()

    return rows
