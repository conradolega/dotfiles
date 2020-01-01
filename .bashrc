export EDITOR=vim

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -z "$TMUX" ]; then
    tmux attach-session -t 0
fi

function git_branch_color {
    echo $([[ -z $(git status -s 2> /dev/null) ]] && echo '0;32m' || echo '1;31m')
}

function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

PS1="\[\e[1;32m\]\$(date +%H:%M) \w \[\e[\$(git_branch_color)\]\$(parse_git_branch)\[\e[0;0m\]$ "
