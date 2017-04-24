#!/bin/sh

if  uname -a | grep 'Linux' ; then
    LSOPTION="alias ls='ls --color=auto'"
    LSCOLORS="export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'"
fi
if  uname -a | grep 'BSD' ; then
    LSOPTION="alias ls='ls -G'"
    LSCOLORS="export LSCOLORS=gxfxcxdxbxegedabagacad"
fi
if  uname -a | grep 'Darwin' ; then
    LSOPTION="alias ls='ls -G'"
    LSCOLORS="export LSCOLORS=gxfxcxdxbxegedabagacad"
fi
cp bashrc $HOME/.bashrc
echo $LSOPTION >> $HOME/.bashrc
echo $LSCOLORS >> $HOME/.bashrc
source $HOME/.bashrc

if [ ! -e $HOME/.vim/autoload/plug.vim ]; then
    echo "you need install vim-plug."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "vim-plug was installed. Please run \"PlugInstall\" command when run vim editor."
fi

cp vimrc  $HOME/.vimrc
