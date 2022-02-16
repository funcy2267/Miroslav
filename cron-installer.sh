#!/bin/bash

CRON_FILE="/etc/cron.d/Miroslav"

if [ $1 == "install" ]; then
    echo "* * * * * $(id -un) cd $(pwd) && ./task.sh" | sudo tee $CRON_FILE
fi
if [ $1 == "remove" ]; then
    sudo rm -f $CRON_FILE
fi
