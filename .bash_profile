export ZSH="/home/kopplin/.oh-my-zsh"
export NVM_AUTO_USE=true
export PATH=~/.local/bin:$PATH

# jdk / android studio
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias ls="k"
alias cat='bat'
alias run-android="~/Android/Sdk/emulator/emulator -avd Pixel_3_API_28"

alias deploy="
  . ~/aws-sts-assumerole/assumerole &&
  rm -rf ./.npmrc node_modules build coverage &&
  nvm use && npm i &&
  npm run deploy:dev:edugle
"

alias upgrade-system="
  cd ~/.dotfiles &&
  ./install
"

alias ga="git add"
alias gs="git status"
alias gp="git push"
alias gc="git checkout"
alias gb="git branch"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"