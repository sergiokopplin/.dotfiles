#!/bin/bash

sudo snap install code --classic
sudo snap install postman

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
checkApt mysql-workbench
checkApt terminator

# trackpad
checkApt xdotool
checkApt wmctrl
checkApt libinput-tools
sudo gpasswd -a $USER input
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install (or sudo ./libinput-gestures-setup install)
libinput-gestures-setup autostart
libinput-gestures-setup start

# amazon
checkApt python3-pip
checkApt jq
if `gem list eb_deployer -i`; then
  echo "eb_deployer already installed"
else 
  sudo gem install eb_deployer
fi
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip3 install awscli --upgrade --user

# fun
checkApt cowsay
checkApt fortunes
checkApt screenfetch
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

