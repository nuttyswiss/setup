# ~/.bashrc
# Custom minimalistic .bashrc, the way they are meant to be.

umask 022

export EDITOR=vi
export VISUAL=vi

export GOPATH=$HOME
export PATH=$HOME/bin:/usr/local/go/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/snap/bin
[ -z "$PS1" ] && return

PS1='\u@\h:\w\$ '

shopt -s checkwinsize
shopt -s histappend
shopt -s checkwinsize

HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

# some more ls aliases
alias ll='ls -al'
alias ls='ls -aF'

