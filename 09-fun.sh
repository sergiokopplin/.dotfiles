#!/bin/bash

#fun

sudo apt-get install -y cowsay fortunes

if `gem list lolcat -i`; then
  echo "lolcat already installed"
else 
  sudo gem install lolcat
fi

echo "\e[96m\e[1m\e[4mdone\e[0m"
