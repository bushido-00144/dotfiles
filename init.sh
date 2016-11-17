#!/bin/sh

if  uname -a | grep 'Linux' ; then
    LSOPTION="alias ls='ls --color=auto'"
fi
if  uname -a | grep 'BSD' ; then
    LSOPTION="alias ls='ls -G'"
fi
if  uname -a | grep 'Darwin' ; then
    LSOPTION="alias ls='ls -G'"
fi
cp bashrc $HOME/.bashrc
echo $LSOPTION >> $HOME/.bashrc
source $HOME/.bashrc

if [ ! -e $HOME/.vim/autoload/plug.vim ]; then
    echo "you need install vim-plug."
    echo "Aborted init."
    exit 1
fi

cp vimrc  $HOME/.vimrc
