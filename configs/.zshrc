export NVM_AUTO_USE=true
export PATH=~/.local/bin:$PATH

# jdk / android studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#####################################
#### ALIAS CONFIGS               ####
#####################################

alias open-android="scrcpy"

alias run-android="~/Android/Sdk/emulator/emulator -avd Pixel"

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

source '/home/kopplin/.zinit/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light lukechilds/zsh-nvm
zinit light lukechilds/zsh-better-npm-completion
zinit ice as"program" pick"bin/git-dsf"
zinit light zdharma/zsh-diff-so-fancy
zinit light sobolevn/wakatime-zsh-plugin

# zinit light MichaelAquilina/zsh-you-should-use
zinit light denysdovhan/spaceship-prompt

#####################################
#### SHELL CONFIGS               ####
#####################################

SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_PACKAGE_SHOW="false"
SPACESHIP_DOCKER_SHOW="false"

#####################################
#### FUN                         ####
#####################################

fortune | cowsay | lolcat
# fortune /usr/share/games/fortunes/brasil | cowsay | lolcat
### End of Zinit's installer chunk
