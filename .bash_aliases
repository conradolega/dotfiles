alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias tmux='TERM=screen-256color tmux -2'
alias g='git'

? () { ag -i "$1" ${2:-.}; }
