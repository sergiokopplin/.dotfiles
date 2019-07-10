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

