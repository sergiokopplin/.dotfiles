export NVM_AUTO_USE=true
export PATH=~/.local/bin:$PATH

# jdk / android studio
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

#####################################
#### ALIAS CONFIGS               ####
#####################################

alias run-android="~/Android/Sdk/emulator/emulator -avd Pixel_3_API_28"

alias deploy="
  . ~/aws-sts-assumerole/assumerole &&
  rm -rf ./.npmrc node_modules build coverage &&
  nvm use && npm i &&
  npm run deploy:dev:edugle
"

alias upgrade-system="
  cd ~/.dotfiles &&
  git pull origin master &&
  ./install
"

#####################################
#### ZSH CONFIGS                 ####
#####################################

ZSH_THEME=""

plugins=(
  git
  z
)

export ZSH="/home/kopplin/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

#####################################
#### ZPLUGIN CONFIGS             ####
#####################################

source '/home/kopplin/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light lukechilds/zsh-nvm
zplugin light lukechilds/zsh-better-npm-completion
zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy
zplugin light denysdovhan/spaceship-prompt

#####################################
#### SHELL CONFIGS               ####
#####################################

SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"
SPACESHIP_NODE_SYMBOL=""
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_BRANCH_PREFIX=""
# SPACESHIP_USER_SHOW="always"
SPACESHIP_CHAR_SYMBOL='λ '

#####################################
#### FUN                         ####
#####################################

# fortune | cowsay | lolcat
# fortune /usr/share/games/fortunes/brasil | cowsay | lolcatsource ~/pure10k.zsh
