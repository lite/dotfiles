
alias ls='ls --color'
alias grep='grep -P -a --color=auto'
alias df='df -h'
alias wget='wget --no-check-certificate'

alias redo='sudo $(fc -ln -1)'
mcd() { mkdir -p "$@" && cd "$@"; }

alias gowd='cd "`pbpaste`"'
alias cwd='pwd | pbcopy'

alias hub='cd ~/code/github/lite'

alias gds='git diff --staged'
alias gdd='git diff'
alias grm='git status -s | grep "^ D" | awk "{print $2}" | xargs git rm'
alias glog='git log --graph --oneline'
