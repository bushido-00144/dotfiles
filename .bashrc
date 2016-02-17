export PATH=/usr/local/bin:/usr/bin:/bin:/sbin:/usr/sbin:/usr/local/sbin

export PS1="\[\e[1;36m\][\d \t]\[\e[00m\]\n[\[\e[1;32m\]\u\[\e[00m\]@\[\e[1;35m\]\H:\W\[\e[00m\]]\$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]ξ(｀・ヮ・´)ξ\"; else echo \"\[\033[0;31m\]ξ(｡>﹏<)ξ\"; fi)\[\033[00m\]$ " 
export EDITOR=/usr/bin/vim
export LSCOLORS=gxfxbxdxcxegedabagacad
alias ls='ls -G'
alias ..='cd ..'
PATH=$PATH:./
PATH=$PATH:/Applications/node-webkit-v0.11.5-osx-x64/node-webkit.app/Contents/MacOS/

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
    fi
