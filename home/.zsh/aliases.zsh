#!/bin/zsh

CORES=12

# git aliases
alias gitc='git commit'
alias gitca='git commit --amend --no-edit'
alias gitl='git log --name-status'
alias gitd='git diff'
alias gits='git status'
alias gita='git add'

# tmux
alias tmn='tmux new-session -s'
alias tml='tmux list-sessions'
alias tmk='tmux kill-session -t'
alias tma='tmux attach-session -d -t'

function tmn-pwd() {
  NAME=${$(basename $(pwd)):l}
  CLEAN_NAME=${NAME:gs/\./-}
  echo $CLEAN_NAME;
  tmux new-session -s $CLEAN_NAME
}


# c++ dev
alias ctest="ctest -j$CORES"
alias make="make -j$CORES"
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
