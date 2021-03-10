#!/bin/bash

# File Management
alias la="ls -alh --group-directories-first --color --time-style=\"+%Y-%m-%d %H:%M\""
alias ls="ls -lh  --group-directories-first --color --time-style=\"+%Y-%m-%d %H:%M\""
alias ll="ls -aC  --group-directories-first --color"
alias rm="rm -rdf"

# Git
alias gitlog="tput rmam; echo ''; git log --format='%C(green)%ad %C(blue)%h%C(auto)%d%C(reset)%n%an (%ae)%n%C(bold)%s%C(reset)%n' --date=format:'%Y-%m-%d %H:%M:%S' --graph -n 10; tput smam;"
alias gitstat="git fetch --prune && git status"

