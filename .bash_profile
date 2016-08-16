alias ll="ls -la"
alias pys="python -m SimpleHTTPServer"
alias open="sublime"
alias vim="nvim"

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

killprocess(){
    sudo kill -9 $(sudo lsof -t -i:$1)
    echo "Process on port $1 terminated!" 
}
alias kpro=killprocess

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


# added by Anaconda2 2.4.1 installer
export PATH="/home/jacksonsouza/anaconda2/bin:$PATH"
