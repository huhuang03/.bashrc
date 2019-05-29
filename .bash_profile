# quick function
function clone() {
	git clone --depth 1 $1
}

function say_done() {
	osascript -e 'display notification "Task Done" with title "Notify"'
}

# some alias or quick function
alias jump="export http_proxy='http:://127.0.0.1:1087';export https_proxy='http://127.0.0.1:1087'"

alias unjump="unset http_proxy;unset https_proxy"

alias p3=python3

alias unmerged_rm='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

alias cleantmp="rm -rf $HOME/tmp/*"

alias bp="/Users/th/source/clone/iScript/pan.baidu.com.py"

function lg() {
    adb logcat -s $1
}


# add git branch to shell
# PS1 origin is \h:\W \u\$
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\h:\W \u\$(parse_git_branch)\$ "


# some home
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export ANDROID_HOME="$HOME/Library/Android/sdk"

export NODE_PATH=/usr/local/lib/node_modules
export FLUTTER_HOME="$HOME/source/clone/flutter"



# change path
export PATH=$PATH:$HOME/source/bin/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$FLUTTER_HOME/bin
# tmp path for nan2tetris
export PATH=$PATH:$HOME/source/clone/nand2tetris/tools
export PATH=$PATH:$HOME/source/clone/depot_tools


# auto jump
[[ -s /Users/th/.autojump/etc/profile.d/autojump.sh ]] && source /Users/th/.autojump/etc/profile.d/autojump.sh

# Key bindings, up/down arrow searches through history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\eOA": history-search-backward'
bind '"\eOB": history-search-forward'


source $HOME/source/.bash_profile/git-completion.bash

source /usr/local/etc/bash_completion.d/aria2c
