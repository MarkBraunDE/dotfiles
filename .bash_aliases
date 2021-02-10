#!/bin/bash

# FILE:    ~/.bash_aliases
# AUTHOR:  mark.braun.1988@gmail.com
# SUMMARY: Gets called by the '~/.bashrc' to set the user
#          specified aliases.


# File Management
alias ls="ls -alh --group-directories-first --color --time-style=\"+%Y-%m-%d %H:%M\""
alias rm="rm -rdf"

# Git
alias gitlog="tput rmam; echo ''; git log --format='%C(green)%ad %C(blue)%h%C(auto)%d%C(reset)%n%an (%ae)%n%C(bold)%s%C(reset)%n' --date=format:'%Y-%m-%d %H:%M:%S' --graph -n 10; tput smam;"
alias gitstat="git fetch --prune && git status"

