#!/bin/bash
# A simplified and customised project opener inspired by
# https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=$(find ~/Code -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    # Setup my tmux session how I like it.
    tmux new-session -d -s $selected_name -c $selected nvim
    tmux new-window -t $selected_name: -d
    tmux new-window -t $selected_name: -d lazygit
fi

# If we're not in tmux, attach.
if [[ -z $TMUX ]]; then
    tmux attach -t $selected_name
    exit 0
fi

# If we are in tmux, switch.
tmux switch-client -t $selected_name
