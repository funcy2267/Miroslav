#!/bin/bash

DBOT_PATH='/usr/local/bin/dbot-run'
PLAN='./plan.txt'
CONFIG='./configs/dbot-zelda.conf'

get-message () { grep $(date +%u-%H:%M) $PLAN | cut -d " " -f2- ; }

if [[ $(get-message) ]] ;
then
	echo $(get-message) | $DBOT_PATH -c $CONFIG -d message -
else
	echo 'Nothing to send.'
fi
