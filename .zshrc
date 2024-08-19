# --- Base Config --- #

export PATH=~/bin:$PATH 
alias proj=openproj.sh
alias wfs=~/scripts/wait-for-success
alias vim=nvim

# cargo
# export PATH="$HOME/.cargo/bin:$PATH"

# python3
# export PATH="`python3 -m site --user-base`/bin:$PATH"

# nvm
export NVM_DIR=~/.nvm

# brew
source $(brew --prefix nvm)/nvm.sh

# fzf key bindings.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Style shell prompt.
autoload -U colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git 
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "(%{$fg[cyan]%}%b%{$reset_color%}) "
precmd() {
    vcs_info
}
setopt prompt_subst
PROMPT='%~ ${vcs_info_msg_0_} '

# Use 'config' command to interact with dotfiles bare repo.
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

eval $(thefuck --alias)

# vi mode
bindkey -v
