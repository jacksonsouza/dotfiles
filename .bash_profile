alias ls="ls -la"
alias pys="python -m SimpleHTTPServer"
alias vim="nvim"
alias psqlstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psqlstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias vimconfig="cd ~/.config/nvim/"

basicgitflow() {
    git add .
    git commit -m "$1"
    git push origin $2
}
alias gco=basicgitflow


basicgitflowtwo() {
    git pull origin $1
}
alias gpul=basicgitflowtwo

grepandkill(){ 
    PID=`ps | grep "$1" | head -1 | awk '{print substr($0,0,5)}'`
    kill -9 $PID
    echo "Process $PID found with string '$1' terminated!" 
}
alias gkill=grepandkill

findinfiles(){
    grep -rni ./ --color=always -e "$1" | awk -F: '{print $1" at line "$2"\n   "$3"\n--"}'
}
alias fif=findinfiles



export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

if [ -n "$SSH_CLIENT" ]; then
    PS1='\n\u@\h \w ->'
else
    PS1="\nlocal \w -> "
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
