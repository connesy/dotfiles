#!/bin/bash

alias l="ls -lh"
# Only show directories
alias ldir='ll -d */'
# Sort by modified time DESC
alias lt='ll -t'

# bash calculator
alias calc="bc"
alias calculator="bc"

# Conda aliases
alias cc="conda activate cc"
alias dev="conda activate dev"
alias prod="conda activate prod"

# View size of folder
alias d='du -sch * | sort -h'

# Super grepper
alias g="grep --exclude-dir='.*' --exclude-dir='build' --exclude='*.*save' --exclude='*.yml' -rHIn" # Ignore binary files, hidden files/directories, also ignore backups/temps/swaps, search recursively, print filenames and line numbers

# Super PS
alias pss='ps -u $USER o pid,ppid,c,pmem,stime,tty,time,stat,cmd --sort -rss --cols $COLUMNS | grep -vP "(sshd: |sftp-server|-bash|ps -u )"'

alias cp="cp -i"  # Ask before overwriting
alias mv="mv -i"
alias bc="bc -i"

# https://stackoverflow.com/questions/17983068/delete-local-git-branches-after-deleting-them-on-the-remote-repo
alias gitpurge_deleted_branches="git fetch --all -p; git branch -vv | grep ': gone]' | awk '{ print \$1 }' | xargs -n 1 git branch -d"
alias gitpurge_deleted_branches_force="git fetch --all -p; git branch -vv | grep ': gone]' | awk '{ print \$1 }' | xargs -n 1 git branch -D"
alias gitpurge_deleted_branches_dry="git fetch --all -p; git branch -vv | grep ': gone]'"

# Aliases to get google cloud kubectl pod names and start a terminal in the current kubectl pod
alias get_pod='kubectl get pods | grep data-quality | while read a b; do echo "$a"; done'
alias kube_start='kubectl exec -it "$(get_pod)" bash'

# Start lcoal MySQL server
alias mysql_start='mysqld_safe &'

# Remove mysql caches before running npm test
alias npm_test='rm -r ~/connectedcars/data/mysqldata/ ~/connectedcars/data/mysqldata-context/; ( cd ~/connectedcars/data/migrations; npm test )'

# Show info about the computer
alias about="inxi -F"

# Add python migration script as alias
alias migrate="python ~/connectedcars/data-quality/src/run_table_migrations.py"

# Add aliases to control blinkstick
alias bsg="blinkstick --set-color green"
alias bsr="blinkstick --set-color red"
alias bso="blinkstick --set-color off"

# When bluetooth headset can't connect, run this and try again
alias bluetooth_fix="killall pulseaudio"

alias pudb="pudb3"
