#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# WAL
(cat ~/.cache/wal/sequences &)
cat ~/.cache/wal/sequences
source ~/.cache/wal/colors-tty.sh

# Aliases
alias pacman='sudo pacman'
alias grep='grep --color=auto'
alias ip='ip -c --color=auto' 
alias ll='ls -l --color=auto' 
alias la='ls -la --color=auto' 
alias lsa='ls -lsa --color=auto'

