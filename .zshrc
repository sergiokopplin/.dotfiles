user=$(whoami)

REACT_EDITOR=code

export ANDROID_SDK=/Users/$user/Library/Android/sdk
export PATH=/Users/$user/Library/Android/sdk/platform-tools:$PATH
export ZSH="/Users/$user/.oh-my-zsh"
export NVM_AUTO_USE=true

ZSH_THEME=""

plugins=(
  git
  z
)

alias docker-stop='docker stop $(docker ps -aq)'
alias docker-rm-containers='docker rm $(docker ps -aq)'
alias docker-rm-images='docker rmi $(docker images -q)'
alias docker-rm='docker-stop && docker-rm-containers && docker-rm-images'

source $ZSH/oh-my-zsh.sh
source "/Users/$user/.zinit/bin/zplugin.zsh"

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zinit ice as"program" pick"bin/git-dsf"
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/zsh-diff-so-fancy
zinit light lukechilds/zsh-nvm
zinit light denysdovhan/spaceship-prompt

SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
