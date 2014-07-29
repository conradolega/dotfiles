alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias tmux='TERM=xterm-256color tmux'
alias g='git'

? () { grep -nir $1 ${2:-.}; }
