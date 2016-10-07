#!/bin/sh

if [ ! -e $HOME/.vim/autoload/plug.vim ]; then
    echo "you need install vim-plug."
    echo "Aborted init."
    exit 1
fi

mv bashrc $HOME/.bashrc
mv vimrc  $HOME/.vimrc
