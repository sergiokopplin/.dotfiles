#!/bin/bash

if [ -f "$HOME/.config/terminator/plugins/editor_plugin.py" ]; then
  echo "terminator editor plugin already installed"
else
  mkdir ~/.config/terminator
  mkdir ~/.config/terminator/plugins
  wget https://git.io/v5Zww -O $HOME"/.config/terminator/plugins/terminator-themes.py"
  wget -O ~/.config/terminator/plugins/editor_plugin.py https://raw.githubusercontent.com/mchelem/terminator-editor-plugin/master/editor_plugin.py
fi  

echo "\e[96m\e[1m\e[4mdone\e[0m"
