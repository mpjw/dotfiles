#!/usr/bin/sh

# .bashrc main file. This will source different sub-files

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mpjw/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mpjw/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mpjw/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mpjw/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
