#!/bin/bash

git clone https://github.com/Querela/discord-notifier-bot.git
cd discord-notifier-bot
python3 setup.py build
sudo python3 setup.py install
echo
echo '---------------------------'
echo '| dbot has been installed |'
echo '---------------------------'
echo
