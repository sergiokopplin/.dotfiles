#!/bin/bash

sudo gpasswd -a $USER input
sudo apt-get install -y xdotool wmctrl
sudo apt-get install -y libinput-tools

git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install (or sudo ./libinput-gestures-setup install)

libinput-gestures-setup autostart
libinput-gestures-setup start

echo "\e[96m\e[1m\e[4mdone\e[0m"
