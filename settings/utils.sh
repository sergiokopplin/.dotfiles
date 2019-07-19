#!/bin/bash

sudo snap install code --classic

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
sudo add-apt-repository ppa:slimbook/slimbook -y

checkApt curl
checkApt gnome-tweak-tool
checkApt zsh
checkApt ruby-full
checkApt slimbookbattery
checkApt terminator
mkdir ~/.config/terminator

# fun
checkApt cowsay
checkApt fortunes
if `gem list lolcat -i`; then
  echo "lolcat already installed"
else 
  sudo gem install lolcat
fi

# docker
if [ -x "$(command -v docker)" ]; then
  echo "docker already exists"
else 
  curl -fsSL get.docker.com | CHANNEL=test sh
fi
if [ -x "$(command -v docker-compose)" ]; then
  echo "docker-compose already exists"
else 
  sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  docker-compose --version
fi

# zsh
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo 'Changing default shell to zsh'
  chsh -s /bin/zsh
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
