#!/bin/bash

if [ ! -d "$HOME/Android" ]; then
  echo "creates android folders"
  mkdir ~/Android
  mkdir ~/Android/Sdk
else 
  echo "android folders already exists"
fi

echo "\e[96m\e[1m\e[4mdone\e[0m"

