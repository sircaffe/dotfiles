#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'

# PS1='[\u@\h \W]\$ '
PS1='[\u@\e[31m\h\e[0m \W]\$ '
. "$HOME/.cargo/env"
