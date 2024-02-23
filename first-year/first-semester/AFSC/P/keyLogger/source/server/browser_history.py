import datetime
import json
import os
import time

import util


class Browser_history():
    def __init__(self, database_filename : str, json_filename : str) -> None:
        self.db_filename : str = database_filename
        self.json_filename : str = json_filename
    
    def import_database(self):
        os.system(f"browserexport merge -j --stream {self.db_filename} > {self.json_filename}")
        print("History log updated!")
        time.sleep(1)

    def get_records_urls(self, start_datetime : datetime , end_datetime : datetime, key_words : list[str]):
        record_list = []
        with open(self.json_filename) as f:
            for line in f:
                entry = json.loads(line)
                entry_date = util.convert_timestamp_to_datetime(entry['dt'])
                if start_datetime <= entry_date:
                    for key_word in key_words:
                        if key_word in entry["url"]:
                            record_list.append((entry["url"], entry_date))
                            break

        return record_list
                
