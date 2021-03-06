
#alias emacs='emacs -nw'
alias grep='grep -P -a --color=auto'
alias df='df -h'
alias wget='wget --no-check-certificate'
alias rake='noglob rake'

alias redo='sudo $(fc -ln -1)'
mcd() { mkdir -p "$@" && cd "$@"; }
cd() {
    [ -z "$*" ] && builtin cd $HOME
    [ -n "$*" ] && builtin cd "$*"
    [ -f "./bin/activate" ]  && source ./bin/activate 
}

alias gowd='cd "`pbpaste`"'
alias cwd='pwd | pbcopy'

alias hub='cd ~/code/github/lite/'
alias dth='cd ~/dth/git.dev/'

alias grm='git status -s | grep "^ D" | awk "{print $2}" | xargs git rm'
alias glog='git log --graph --oneline'

alias myip='curl ifconfig.me'
alias ut='/Applications/Unity/Unity.app/Contents/MacOS/Unity -projectPath "`pwd`"'
alias ulf='cp ~/tools/osx/unity3d/u3dMac4.0F7/Unity_v4.x.ulf /Library/Application\ Support/Unity/Unity_v4.x.ulf'
