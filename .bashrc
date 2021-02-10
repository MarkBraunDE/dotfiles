#!/bin/bash

# FILE:    ~/.bashrc
# AUTHOR:  mark.braun.1988@gmail.com
# SUMMARY: Executed by bash(1) for non-login shells.
#          Configures the shell and runs startup commands.


# If not running interactively, don't do anything.
case $- in
    *i*) ;;
      *) return;;
esac


# Configure Bash History

# Don't put duplicate lines or lines starting with space in
# the history (~/.bash_history).
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it.
shopt -s histappend

# Setting history size.
HISTSIZE=100
HISTFILESIZE=200


# Configure Bash Behavior

# Check the window size after each command and, if
# necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make the pattern "**" in a pathname expansion context
# match all files and zero or more directories.
shopt -s globstar


# Configure Prompt Style

# Set different color for root.
PS1_USER_COLOR="\e[0;31m"
if [ "$EUID" -ne 0 ]; then
  PS1_USER_COLOR="\e[0;32m"
fi

# Lookup for git branch.
function PS1_GIT_BRANCH() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Set the promt variable.
export PS1="$PS1_USER_COLOR\u@\h \e[0;34m\w \e[0;33m\$(PS1_GIT_BRANCH)\n\r$PS1_USER_COLOR\$>\e[m "


# Alias Definitions

# Load aliases from different file.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# Set Editor
export VISUAL=vim
export EDITOR="$VISUAL"

