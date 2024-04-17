#!/usr/bin/sh

# Main file for .bashrc modifications, will source different sub-files
# Source this from a .bashrc file provided by system admin or replace .bashrc file

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment setup
if [ -f ~/dotfiles/.env ]; then
    source ~/dotfiles/.env
fi

# source git configuration
if [ -f ~/dotfiles/.bash_git ]; then
    source ~/dotfiles/.bash_git
fi

# Prompt and color configuration
if [ -f ~/dotfiles/.bash.prompt ]; then
    source ~/dotfiles/.bash.prompt
fi

# Aliases
if [ -f ~/dotfiles/.bash.aliases ]; then
    source ~/dotfiles/.bash.aliases
fi

# TODO: tmux configuration and Tmuxinator completions
[ -f ~/.bin/tmuxinator.bash ] && source ~/.bin/tmuxinator.bash

# TODO: install https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
# HISTIGNORE="$HISTIGNORE:jrnl *"

