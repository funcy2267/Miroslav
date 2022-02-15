#!/bin/bash

CRON_FILE='/etc/cron.d/miroslav'

if [ $1 == "install" ]; then
    echo "* * * * * $(id -un) cd $(pwd) && ./task.sh $2 $3" | sudo tee $CRON_FILE
fi
if [ $1 == "remove" ]; then
    sudo rm -f $CRON_FILE
fi
