# dotfiles
A collection of personal dotfiles

The script `.bash_setup` is a collection of all the other `.bash_*` scripts. 
It exists so my `.bashrc` only has to contain the lines
```
if [ -f ~/.bash_setup ]; then
    . ~/.bash_setup
fi
```
