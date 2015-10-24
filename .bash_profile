export PATH=$PATH:/usr/local/share/npm/bin:/usr/local/sbin
export JAVA_HOME=`/usr/libexec/java_home`
export PGDATA=/usr/local/var/postgres
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig

[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load NVM into a shell session *as a function*

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
export PS1="\[\033[0;36m\]\u\[\033[0;34m\]@\[\033[0;36m\](^o^)p[ \[\033[1;32m\]\W \[\033[0;36m\]]q \[\033[1;32m\]$ \[\033[0;32m\]" 

