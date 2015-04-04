export EDITOR=vim

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    color=$([[ -z $(git status -s) ]] && echo '0;32m' || echo '1;31m')
    echo "$color("${ref#refs/heads/}")"
}

PS1="\[\e[1;32m\]\$(date +%H:%M) \u@\h:\w \[\e[\$(parse_git_branch)\[\e[0;37m\]$ "
