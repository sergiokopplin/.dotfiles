#!/bin/bash

#fun

function checkApt {
  dpkg -s $1 &> /dev/null  

  if [ $? -ne 0 ]; then
    sudo apt-get install -y $1
  else
    echo "$1 already installed"
  fi
}

checkApt cowsay
checkApt fortunes

if `gem list lolcat -i`; then
  echo "lolcat already installed"
else 
  sudo gem install lolcat
fi

echo "\e[96m\e[1m\e[4mdone\e[0m"
