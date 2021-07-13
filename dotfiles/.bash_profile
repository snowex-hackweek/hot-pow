alias ll='ls -FGlAhp --color=auto'; # add flags to ls and store as ll alias
cd() { builtin cd "$@"; ll; }; # ll on cd

## add some color to your terminal. best when using a dark background. 
## (e.g. in Jupyter Lab under Settings -> Jupyter Lab Theme -> Dark)
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ ';
export LS_COLORS='di=0;93';
