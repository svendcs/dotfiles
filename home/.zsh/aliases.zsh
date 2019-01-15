#!/bin/zsh

CORES=4

# git aliases
alias gitc='git commit'
alias gitl='git log'
alias gitd='git diff'
alias gits='git status'
alias gita='git add'

# tmux
alias tmn='tmux new-session -s'
alias tmn-pwd='tmux new-session -s ${$(basename $(pwd)):l}'
alias tml='tmux list-sessions'
alias tmk='tmux kill-session -t'
alias tma='tmux attach-session -d -t'


# c++ dev
alias ctest="ctest -j$CORES"
alias make="make -j$CORES"
alias ninja="ninja -j$CORES"
alias cmake='cmake -GNinja -DCMAKE_BUILD_TYPE="RelWithDebInfo"'

# clipboard
alias cbput='xclip -selection c'
alias cbfetch='xclip -selection c -o'

# misc
alias c='clear'
alias q='exit'
alias vim='nvim'
alias ack="ack --pager=\"$PAGER\""

function swap() {
    TMPFILE="$1.tmp"
    mv $1 $TMPFILE
    mv $2 $1
    mv $TMPFILE $2
}
