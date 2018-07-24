#!/bin/zsh

# Set option for extended globbing features
setopt extended_glob

# Setup ZSH vim mode
bindkey -v
export KEYTIMEOUT=1

# Use vim cli mode
bindkey '^P' up-line-or-search
bindkey '^N' down-line-or-search

# backspace and ^h working even after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# Vim as default editor
export EDITOR=nvim

# Plenty big history for searching backwards and doing analysis
export HISTFILESIZE=100000
