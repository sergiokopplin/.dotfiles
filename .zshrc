#####################################
#### ZSH CONFIGS                 ####
#####################################

ZSH_THEME=""

plugins=(
  git
  z
)

#####################################
#### SOURCE CONFIGS              ####
#####################################

source ~/.bash_profile
source $ZSH/oh-my-zsh.sh
source '/home/kopplin/.zplugin/bin/zplugin.zsh'

#####################################
#### ZPLUGIN CONFIGS             ####
#####################################

autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin

zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
zplugin light lukechilds/zsh-nvm
zplugin light lukechilds/zsh-better-npm-completion
zplugin light supercrabtree/k
zplugin light romkatv/powerlevel10k
zplugin ice as"program" pick"bin/git-dsf"
zplugin light zdharma/zsh-diff-so-fancy

#####################################
#### POWERLEVEL9K CONFIGS        ####
#####################################

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ICON_LEFT=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable user dir vcs nvm)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL="\ue0b2"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F\u2570\uf460%f "

#####################################
#### FUN                         ####
#####################################

fortune | cowsay | lolcat
# fortune /usr/share/games/fortunes/brasil | cowsay | lolcatsource ~/pure10k.zsh
