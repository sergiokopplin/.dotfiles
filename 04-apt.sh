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

checkApt gnome-tweak-tool
checkApt git
checkApt zsh
checkApt synaptic
checkApt ruby-full
checkApt fonts-powerline
checkApt python3-pip #amazon
checkApt jq #amazon
sudo add-apt-repository -y ppa:openjdk-r/ppa #jdk - android studio
checkApt openjdk-8-jdk #jdk - android studio
checkApt gcc-multilib lib32z1 lib32stdc++6 #jdk - android studio
checkApt qemu-kvm #jdk - android studio
checkApt mysql-workbench
checkApt terminator
checkApt flameshot # screenshots
sudo add-apt-repository -y ppa:lazygit-team/release
checkApt lazygit

echo "\e[96m\e[1m\e[4mdone\e[0m"
