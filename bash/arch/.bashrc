#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
source ~/.git-prompt.sh
source ~/.git-completion.bash
PS1="\[\e[1;35m\]\w\[\e[1;95m\]\[\e[1;33m\]\$(__git_ps1 ' (%s)')\n\[\e[1;31m\]->\[\e[0m\] "

alias ptrip='ssh -p 2223 powertrip@powertrip.mggen.nau.edu'
alias servework='ssh 129.219.152.37'

export PATH=/home/anders/dng/bin:$PATH

# added by Miniconda3 4.1.11 installer
export PATH="/home/anders/miniconda3/bin:$PATH"
