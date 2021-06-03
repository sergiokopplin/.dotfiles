user=$(whoami)

REACT_EDITOR=code

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
alias gf='git fetch -p'
alias gcommit='git commit'
alias gcm='gcommit -m'
alias gam='gcommit -a --amend'
alias gl='git log --all --graph --decorate --oneline --abbrev-commit'
alias gpl='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gu='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias gup='git pull --rebase --prune $@ && git submodule update --init --recursive'
alias gp='git push'
alias gmm='git merge main'

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
zinit ice depth=1; zinit light romkatv/powerlevel10k

# zinit light denysdovhan/spaceship-prompt
# SPACESHIP_PACKAGE_SHOW=false
# SPACESHIP_DOCKER_SHOW=false

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
