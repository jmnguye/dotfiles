# Created by newuser for 5.9
export ZSH="/home/mxp/.oh-my-zsh"

plugins=(git
colorize
  )

source $ZSH/oh-my-zsh.sh

EDITOR='vim'
eval "$(starship init zsh)"

alias ls="eza --icons"
alias ssh="kitten ssh"
