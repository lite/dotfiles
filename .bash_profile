#!/bin/bash

# Lock and Load a custom theme file
# location /.bash_it/themes/
# export BASH_THEME='zitron'
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color

# Set my editor and git editor
export EDITOR="/usr/bin/mate -w"
export GIT_EDITOR='/usr/bin/mate -w'

# bash it
export BASH=$HOME/.bash-it
[[ -s $BASH/bash_it.sh ]] && source $BASH/bash_it.sh

# env profile
export OSNAME=`uname -s`
if [[ $OSNAME = "Darwin" ]]; then
	export ENV_PROFILE=$HOME/.bash/darwin_profile
elif [[ $OSNAME = "Linux" ]]; then
	export ENV_PROFILE=$HOME/.bash/ubuntu_profile
else
	export ENV_PROFILE=$HOME/.bash/cygwin_profile
fi
# echo $ENV_PROFILE

[[ -s $ENV_PROFILE ]] && source $ENV_PROFILE

# bind -P
[[ -s $HOME/.bash/binding.bash ]] && bind -f $HOME/.bash/binding.bash

# custome  
[[ -s $HOME/.bash/tw_profile ]] && source $HOME/.bash/tw_profile
[[ -s $HOME/.bash/aws_profile ]] && source $HOME/.bash/aws_profile
[[ -s $HOME/.bash/rvm_profile ]] && source $HOME/.bash/rvm_profile
[[ -s $HOME/.bash/alias.bash ]] && source $HOME/.bash/alias.bash
[[ -s $HOME/.bash/functions.bash ]] && source $HOME/.bash/functions.bash
