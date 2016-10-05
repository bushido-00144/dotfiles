#!/bin/sh

if [ ! -d $HOME/.vim/plugged ]; then
    echo "you need install vim-plug."
    echo "Aborted init."
    exit 1
fi

mv bashrc $HOME/.bashrc
mv vimrc  $HOME/.vimrc
