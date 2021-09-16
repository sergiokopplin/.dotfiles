user=$(whoami)

export ZSH="/Users/$user/.oh-my-zsh"
export NVM_AUTO_USE=true

ZSH_THEME=""

plugins=(z)

alias docker-stop='docker stop $(docker ps -aq)'
alias docker-rm-containers='docker rm $(docker ps -aq)'
alias docker-rm-images='docker rmi $(docker images -q)'
alias docker-rm='docker-stop && docker-rm-containers && docker-rm-images'

alias ga='git add'
alias gs='git status'
alias gd='git diff'
alias gb='git branch'
alias gbd='gb -D'
alias gc='git checkout'
alias gcb='gc -b'
alias gm='git checkout main && git fetch -p && git pull origin main --rebase --prune $@ && git submodule update --init --recursive'
alias gcm='gcommit -m'
alias gl='git log --all --graph --decorate --oneline --abbrev-commit'
alias gp='git push'
alias gmm='git merge main'

source $ZSH/oh-my-zsh.sh
source "/Users/$user/.zinit/bin/zplugin.zsh"

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zinit light zdharma/zsh-diff-so-fancy
zplugin load zsh-users/zsh-syntax-highlighting

zinit light lukechilds/zsh-nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# poetry
export PATH="$HOME/.poetry/bin:$PATH"