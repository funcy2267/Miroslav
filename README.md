# About
Miroslav is a bot for reminding weekly tasks on a Discord server.
# Requirements
Run to install all dependencies:
```
sudo apt update && sudo apt install -y python3 python3-pip && sudo pip3 install -r ./requirements.txt
```
# Configuration
Configure bot in `dbot.conf` and write plan in `plan.txt`.\
Install cron task using:
```
./cron-installer.sh install
```
You can remove it later with:
```
./cron-installer.sh remove
```
## Plan syntax
`d-hh:mm your_message`
- d is day of the week (1-7)
- h is hour of the day (00-24)
- m is minute of hour (00-59)
