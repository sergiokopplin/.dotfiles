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
