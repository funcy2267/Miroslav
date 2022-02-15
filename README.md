# Miroslav
# Requirements
- python3
- cron
# Installation
1. Install `discord-notifier-bot` using **pip** or **./install-module.sh** if you haven't already
2. Specify your bot and channel config in **./configs/** folder and then link proper config in **./cron.sh**
3. Install cron task by using **./cron-install-task.sh** (you can remove it later by executing **./cron-remove-task.sh**)
4. Plan reminders with **plan.txt**
# Plan formatting
`d-hh:mm your_message`
- d is day of the week (1-7)
- h is hour of the day (00-24)
- m is minute of hour (00-59)
