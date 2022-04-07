#!/bin/bash

alias l="ls -lh"
# Only show directories
alias ldir='ll -d */'
# Sort by modified time, oldest first
alias lt='ll -tr'

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
alias gitpurge_deleted_branches="git fetch --all -p; git branch -vv | \grep ': gone]' | awk '{ print \$1 }' | xargs -n 1 git branch -d"
alias gitpurge_deleted_branches_force="git fetch --all -p; git branch -vv | \grep ': gone]' | awk '{ print \$1 }' | xargs -n 1 git branch -D"
alias gitpurge_deleted_branches_dry="git fetch --all -p; git branch -vv | \grep ': gone]'"

# Aliases to get google cloud kubectl pod names and start a terminal in the current kubectl pod
if [[ hostname != "datascience" ]]; then {
    alias get_pod='kubectl get pods | \grep data-quality-v2 | while read a b c d; do if [[ $c = "Running" ]]; then echo "$a" && break; fi; done'
    kube_start() { kubectl exec -it "${1:-$(get_pod)}" -- bash; }
}; fi;

# Show info about the computer
alias about="inxi -F"

# When bluetooth headset can't connect, run this and try again
alias bluetooth_fix="killall pulseaudio"

alias pudb="pudb3"

# Alias to clear swap partition (check if RAM has enough free space with free -m)
alias clear_swap="sudo swapoff --all && sudo swapon --all"

# Setup Z [https://github.com/rupa/z] to enable easy jumping to recent locations
if [ -f ~/z.sh ]; then
  . ~/z.sh
fi

# Alias for kubectl select prod cluster
alias kubeprod="az aks get-credentials --resource-group prod-cluster-eu-west-1-master-skunk --name prod-cluster-eu-west-1-master-skunk --subscription DSG-P-api.dansksupermarked.dk"

# Alias for kubeflow cluster
alias kubekf="az aks get-credentials -n kf-prod-cluster -g kf-prod-cluster --subscription DSG-P-api.dansksupermarked.dk"
alias kfforward="kubectl -n istio-system port-forward svc/istio-ingressgateway 8080:80"

# Alias for data jobs / argo cluster
alias kubeargo="az aks get-credentials -n data-jobs-prod-cluster -g data-jobs-prod-cluster --subscription DSG-P-api.dansksupermarked.dk"
alias argoforward="kubectl -n argo port-forward deployment/argo-argo-workflows-server 2746:2746"
alias argocdforward="kubectl port-forward svc/argocd-cm-server -n argocd 8080:443"

# Alias for the old argo cluster
#alias kubeargoold="az aks get-credentials --resource-group argo-prod-resources --name argo-prod-cluster --subscription DSG-P-api.dansksupermarked.dk"
#alias argoforwardold="kubectl -n argo port-forward deployment/argo-server 2746:2746"
