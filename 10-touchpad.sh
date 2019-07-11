#!/bin/bash

function checkApt {
  dpkg -s $1 &> /dev/null  

  if [ $? -ne 0 ]; then
    sudo apt-get install -y $1
  else
    echo "$1 already installed"
  fi
}

sudo gpasswd -a $USER input

checkApt xdotool
checkApt wmctrl
checkApt libinput-tools

git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install (or sudo ./libinput-gestures-setup install)

libinput-gestures-setup autostart
libinput-gestures-setup start

echo "\e[96m\e[1m\e[4mdone\e[0m"
