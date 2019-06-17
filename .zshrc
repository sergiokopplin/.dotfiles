export ZSH="/home/kopplin/.oh-my-zsh"
export NVM_AUTO_USE=true
export PATH=~/.local/bin:$PATH

ZSH_THEME="spaceship"

plugins=(
    git
    z
)

source $ZSH/oh-my-zsh.sh

# jdk
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
# alias run-android="~/Android/Sdk/emulator/emulator -avd Pixel_3_API_28"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  node          # Node Section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

### Added by Zplugin's installer
source '/home/kopplin/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light lukechilds/zsh-nvm
zplugin light lukechilds/zsh-better-npm-completion

alias deploy="
  . ~/aws-sts-assumerole/assumerole &&
  cd ~/Desktop/edu-ssr &&
  rm -rf ./.npmrc &&
  rm -rf node_modules && 
  rm -rf build &&
  rm -rf coverage &&
  nvm use &&
  npm i &&
  npm run deploy:dev:edugle
"