if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

export SCIKIT_LEARN_DATA="$HOME/.cache/scikit_learn_data"
