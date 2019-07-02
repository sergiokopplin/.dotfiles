#!/bin/bash

sudo apt-get update -y
sugo apt-get upgrade -y
sudo apt-get autoremove -y

sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y git
sudo apt-get install -y zsh
sudo apt-get install -y synaptic
sudo apt-get install -y ruby-full
sudo apt-get install -y fonts-powerline
sudo apt-get install -y python3-pip # amazon
sudo apt-get install -y jq # amazon
sudo add-apt-repository -y ppa:openjdk-r/ppa #jdk - android studio
sudo apt-get install -y openjdk-8-jdk #jdk - android studio
sudo apt-get install -y gcc-multilib lib32z1 lib32stdc++6 #jdk - android studio
sudo apt-get install -y qemu-kvm #jdk - android studio
sudo apt-get install -y mysql-workbench
sudo apt-get install -y terminator