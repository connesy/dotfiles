# Disable "ctrl-s tells the terminal to stop updating meaning you to have to push ctrl-q to resume normal operation"
# This enable CTRL+S to move in the other direction through reverse-i-search (aka CTRL+R)#!/bin/bash
stty -ixon

# Run local mysql server on startup
mysql_start
