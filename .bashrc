export EDITOR=vim

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

PS1="\[\e[1;32m\]\$(date +%H:%M) \u@\h:\w \[\e[1;31m\]\$(parse_git_branch)\[\e[0;37m\]$ "
