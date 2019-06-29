#!/bin/bash

alias l="ls -lh"
alias ldir='ll -d */'
alias cc="conda activate cc"
alias calc="bc"
alias calculator="bc"


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

