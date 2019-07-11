export NVM_AUTO_USE=true

#####################################
#### BASH CONFIGS                ####
#####################################

source ~/.bash_profile

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
zplugin light supercrabtree/k
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
SPACESHIP_USER_SHOW="always"
SPACESHIP_CHAR_SYMBOL='λ '

#####################################
#### FUN                         ####
#####################################

fortune | cowsay | lolcat
# fortune /usr/share/games/fortunes/brasil | cowsay | lolcatsource ~/pure10k.zsh
