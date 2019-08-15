#!/bin/bash

sudo snap install code --classic

# android access
sudo snap install scrcpy

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
# sudo add-apt-repository ppa:slimbook/slimbook -y

checkApt curl
checkApt gnome-tweak-tool
checkApt zsh
checkApt ruby-full
checkApt python
# checkApt slimbookbattery
checkApt terminator
checkApt fonts-powerline
checkApt fonts-firacode
checkApt neofetch

mkdir ~/.config/terminator
mkdir ~/.config/terminator/plugins
wget -P ~/.config/terminator/plugins https://raw.githubusercontent.com/mchelem/terminator-editor-plugin/master/editor_plugin.py

# fun
checkApt cowsay
checkApt fortunes
if `gem list lolcat -i`; then
  echo "lolcat already installed"
else 
  sudo gem install lolcat
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
