#!/bin/bash

sudo snap install postman

function checkApt {
  dpkg -s $1 &> /dev/null  

  if [ $? -ne 0 ]; then
    sudo apt-get install -y $1
  else
    echo "$1 already installed"
  fi
}

checkApt mysql-workbench

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