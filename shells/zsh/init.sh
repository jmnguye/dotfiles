#!/usr/bin/env bash

[[ -e ~/.zshrc ]] && echo "Zsh configuration already exists. backing up..." && mv ~/.zshrc ~/.zshrc.backing.$( date +%Y%m%d%H%M%S )

ln -s ~/dotfiles/shells/zsh/zshrc ~/.zshrc
