#!/bin/bash

echo "Installing Chrome"
wget -O ~/Downloads/Chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/Downloads/Chrome.deb
sudo rm -rf ~/Downloads/Chrome.deb

echo "Installing Spotify"
sudo snap install spotify

echo "Installing Slack"
sudo snap install slack --classic

echo "Installing VSCode"
sudo snap install code --classic

echo "Installing WhatsDesk"
sudo snap install whatsdesk

echo "Installing Hyper"
wget -O ~/Downloads/Hyper.deb  https://releases.hyper.is/download/deb
sudo dpkg -i ~/Downloads/Hyper.deb
sudo rm -rf ~/Downloads/Hyper.deb

echo "Installing Steam"
wget -O ~/Downloads/Steam.db https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i ~/Downloads/Steam.db
sudo rm -rf ~/Downloads/Steam.db

echo "Installing Docker"
curl -fsSL get.docker.com | CHANNEL=test sh

echo "Installing Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
