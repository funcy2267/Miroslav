#!/bin/bash

BOT_PLAN="./plan.txt"
DBOT_BIN="/usr/local/bin/dbot-run"
DBOT_CONFIG="./dbot.conf"

get-message () { grep $(date +%u-%H:%M) $BOT_PLAN | cut -d " " -f2- ; }

if [[ $(get-message) ]] ;
then
	echo $(get-message) | $DBOT_BIN -c $DBOT_CONFIG -d message -
else
	echo "Nothing to send."
fi
