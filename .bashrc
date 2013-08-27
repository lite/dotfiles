[[ -s $HOME/.bash_profile ]] && source $HOME/.bash_profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PATH=/usr/local/bin:/usr/local/share/npm/bin:$HOME/bin:$PATH # Add RVM to PATH for scripting
