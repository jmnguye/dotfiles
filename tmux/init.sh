#!/usr/bin/env bash
$file = "tmux"

[[ -e ~/.$file ]] && echo "Tmux configuration already exists. backing up..." && mv ~/.$file ~/.$file.backing.$( date +%Y%m%d%H%M%S )

ln -s ~/dotfiles/$file/$file.conf ~/.$file.conf
