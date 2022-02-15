#!/bin/bash

CRON_FILE='/etc/cron.d/miroslav'

echo '* * * * *' $(id -un) 'cd' $(pwd) '&& ./cron.sh' | sudo tee $CRON_FILE
