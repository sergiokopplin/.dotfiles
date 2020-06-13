# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

user=$(whoami)

REACT_EDITOR=code-insiders

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
zinit light zdharma/zsh-diff-so-fancy
zinit ice depth=1; zinit light romkatv/powerlevel10k

# zinit light lukechilds/zsh-nvm
# zinit light lukechilds/zsh-better-npm-completion
# zinit light denysdovhan/spaceship-prompt

# SPACESHIP_PACKAGE_SHOW="false"
# SPACESHIP_CHAR_SUFFIX=" "
# SPACESHIP_PACKAGE_SHOW="false"
# SPACESHIP_DOCKER_SHOW="false"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
