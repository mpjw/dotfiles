#!/usr/bin/bash

# Setting up dotfiles
# TODO: add parameter to determine which files to copy and which to link

function backup_and_copy {
	if [[ -e "$1" && -f "$1" && -e "$HOME/dotfiles/$1" ]]; then
		"$1" "$(date +%Y%m%d).backup.$1"
		cp "$HOME/dotfiles/$1" "$HOME"
	fi
}

function backup_and_link {
	if [[ -e "$1" && -f "$1" && -e "$HOME/dotfiles/$1" ]]; then
		"$1" "$(date +%Y%m%d).backup.$1"
		ln -s "$HOME/dotfiles/$1" "$HOME"
	fi
}

files_to_link=(.Rprofile .profile .vimrc .gitconfig .bash_profile)
files_to_copy=(.bashrc .condarc .env)

for f in "${files_to_link[@]}"; do
	backup_and_link "$f"
done

for f in "${files_to_copy[@]}"; do
	backup_and_copy "$f"
done
