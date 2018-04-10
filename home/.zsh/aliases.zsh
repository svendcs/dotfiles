#!/bin/zsh
#
# git aliases
alias gitc='git commit'
alias gitl='git log'
alias gitd='git diff'
alias gits='git status'
alias gita='git add'

# tmux
alias tmn='tmux new-session -s'
alias tml='tmux list-sessions'
alias tmk='tmux kill-session -t'
alias tma='tmux attach-session -d -t'

# c++ dev
alias ctest='ctest -j6'
alias make='make -j6'
alias cmake='cmake -GNinja -DCMAKE_BUILD_TYPE="RelWithDebInfo"'

# clipboard
alias cbput='xclip -selection c'
alias cbfetch='xclip -selection c -o'

# misc
alias c='clear'
alias q='exit'
alias vim='nvim'
alias ack="ack --pager=\"$PAGER\""

