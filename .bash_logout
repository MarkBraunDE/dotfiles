#!/bin/bash

# FILE:    ~/.bash_logout
# AUTHOR:  mark.braun.1988@gmail.com
# SUMMARY: Executed by bash(1) when login shell exits.


# Clear Console 
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

