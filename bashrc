export PATH=/usr/bin:/usr/local/bin:/bin:/sbin:/usr/sbin:/usr/local/sbin

#export PS1="\[\e[1;36m\][\d \t]\[\e[00m\]\n[\[\e[1;32m\]\u\[\e[00m\]@\[\e[1;35m\]\H:\W\[\e[00m\]]\$" 
export PS1="\[\e[1;36m\][\d \t]\[\e[00m\]\n[\[\e[1;32m\]\u\[\e[00m\]@\[\e[1;35m\]\h:\W\[\e[00m\]]\$  \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\]ξ(｀・ヮ・´)ξ\"; else echo \"\[\033[0;31m\]ξ(｡>﹏<)ξ\"; fi)\[\033[00m\] : "
export LSCOLORS=gxfxcxdxbxegedabagacad
alias ls='ls -G'
alias ..='cd ..'
PATH=$PATH:./
