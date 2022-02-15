#!/bin/bash

DBOT_BIN="/usr/local/bin/dbot-run"
DBOT_CONFIG=$2
BOT_PLAN=$1

get-message () { grep $(date +%u-%H:%M) $BOT_PLAN | cut -d " " -f2- ; }

if [[ $(get-message) ]] ;
then
	echo $(get-message) | $DBOT_BIN -c $DBOT_CONFIG -d message -
else
	echo "Nothing to send."
fi
