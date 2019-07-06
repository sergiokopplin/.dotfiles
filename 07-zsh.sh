#!/bin/bash

# Check if oh-my-zsh is installed and updates default shell
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo 'Changing default shell to zsh'
  chsh -s /bin/zsh
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

echo "\e[96m\e[1m\e[4mdone\e[0m"
