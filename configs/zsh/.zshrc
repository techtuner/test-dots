export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dracula-pro"

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

plugins=(git sudo zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source ~/zsh/function.zsh
source ~/zsh/aliases.zsh

export PATH=$PATH:~/.cargo/bin:/~/.local/bin
eval "$(starship init zsh)"