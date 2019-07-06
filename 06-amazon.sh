#!/bin/bash

if `gem list eb_deployer -i`; then
  echo "eb_deployer already installed"
else 
  sudo gem install eb_deployer
fi

curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip3 install awscli --upgrade --user

echo "\e[96m\e[1m\e[4mdone\e[0m"
