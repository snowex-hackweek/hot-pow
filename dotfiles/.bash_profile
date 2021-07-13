alias ll='ls -FGlAhp --color=auto';
cd() { builtin cd "$@"; ll; };
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ ';
export LS_COLORS='di=0;93';
