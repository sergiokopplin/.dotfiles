#!/bin/bash

FONT_INSTALLED=$(fc-list | grep -i "monaco");
if [ -z "$FONT_INSTALLED" ]; then
  . lib/top-programming-fonts/install.sh
else
  echo "fonts already installed"
fi

echo "\e[96m\e[1m\e[4mdone\e[0m"