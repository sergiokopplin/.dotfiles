#!/bin/bash

echo "Installing Spotify"
sudo snap install spotify

echo "Installing Slack"
sudo snap install slack --classic

echo "Installing VSCode"
sudo snap install code --classic

echo "Installing WhatsDesk"
sudo snap install whatsdesk

echo "Installing Docker"
curl -fsSL get.docker.com | CHANNEL=test sh

echo "Installing Docker Compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo "Installing Postman"
sudo snap install postman

echo "Intalling Terminus"
wget -O ~/Downloads/Terminus.db https://github.com/Eugeny/terminus/releases/download/v1.0.82/terminus-1.0.82-linux.deb
sudo dpkg -i ~/Downloads/Terminus.db
sudo rm -rf ~/Downloads/Terminus.db
