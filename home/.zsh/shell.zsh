#!/bin/zsh

# Set option for extended globbing features
setopt extended_glob

# Setup ZSH vim mode
bindkey -v
export KEYTIMEOUT=1

# Vim as default editor
export EDITOR=nvim

# Plenty big history for searching backwards and doing analysis
export HISTFILESIZE=100000
