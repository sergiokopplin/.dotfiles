#!/bin/bash

function checkApt {
  dpkg -s $1 &> /dev/null  

  if [ $? -ne 0 ]; then
    sudo apt-get install -y $1
  else
    echo "$1 already installed"
  fi
}

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y

checkApt curl
checkApt gnome-tweak-tool
checkApt git
checkApt zsh
checkApt synaptic
checkApt ruby-full
checkApt fonts-powerline
checkApt python3-pip                          #amazon
checkApt jq                                   #amazon
sudo add-apt-repository ppa:slimbook/slimbook -y
checkApt slimbookbattery
checkApt mysql-workbench
checkApt terminator
checkApt chrome-gnome-shell
checkApt screenfetch

echo "\e[96m\e[1m\e[4mdone\e[0m"
