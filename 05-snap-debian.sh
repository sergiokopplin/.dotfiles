#!/bin/bash

# sudo snap install spotify
# sudo snap install slack --classic
# sudo snap install whatsdesk
sudo snap install code --classic
sudo snap install postman
sudo snap install android-studio --classic

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

echo "\e[96m\e[1m\e[4mdone\e[0m"
