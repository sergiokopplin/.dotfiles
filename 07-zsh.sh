#!/bin/bash

# Check if oh-my-zsh is installed and updates default shell
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  /bin/sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo 'Changing default shell to zsh'
  chsh -s /bin/zsh
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt" ]; then
    echo 'Installing spaceship'
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt"
    ln -s "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

echo "\e[96m\e[1m\e[4mdone\e[0m"
