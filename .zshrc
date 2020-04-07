user=$(whoami)

export ANDROID_SDK=/Users/$user/Library/Android/sdk
export PATH=/Users/$user/Library/Android/sdk/platform-tools:$PATH
export ZSH="/Users/$user/.oh-my-zsh"

ZSH_THEME=""

plugins=(
  git
  z
)


source $ZSH/oh-my-zsh.sh
source "/Users/$user/.zinit/bin/zplugin.zsh"

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zinit ice as"program" pick"bin/git-dsf"
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light lukechilds/zsh-nvm
zinit light lukechilds/zsh-better-npm-completion
zinit light zdharma/zsh-diff-so-fancy
zinit light denysdovhan/spaceship-prompt

SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
### End of Zinit's installer chunk
