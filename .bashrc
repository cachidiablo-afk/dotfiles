#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Colors
black="\[$(tput setaf 0)\]"
red="\[$(tput setaf 1)\]"
green="\[$(tput setaf 2)\]"
yellow="\[$(tput setaf 3)\]"
blue="\[$(tput setaf 4)\]"
magenta="\[$(tput setaf 5)\]"
cyan="\[$(tput setaf 6)\]"
white="\[$(tput setaf 7)\]"
purple="\[$(tput setaf 018)\]"
bold="\[$(tput bold)\]"


# Title bar - "user@host: ~"
title="\u@\h "
titlebar="\[\033]0;"$title"\007\]"

# Git branch
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)\ /';
}

# Clear attributes
clear_attributes="\[$(tput sgr0)\]"

# Custom bash prompt
export PS1="${bold}${green}${title}${bold}${blue}\w ${bold}${cyan}\$(git_branch)${clear_attributes}${white}"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias die='shutdown -h now'
alias new='reboot'
alias flex='neofetch' 
alias v='nvim'
alias c='clear'
alias e='exit'
alias t='tmux new -s project'
alias google='google-chrome-stable'
