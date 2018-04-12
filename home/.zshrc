#!/bin/zsh

source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle $HOME/.zsh/theme svendcs.zsh-theme --no-local-clone

antigen theme svendcs
antigen apply

for file in $HOME/.zsh/*.zsh; do
  source $file
done
