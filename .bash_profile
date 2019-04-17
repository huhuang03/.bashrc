# quick function
function clone() {
	git clone --depth 1 $1
}

function say_done() {
	osascript -e 'display notification "Task Done" with title "Notify"'
}

# some alias
alias jump="export http_proxy='http:://127.0.0.1:1087';export https_proxy='http://127.0.0.1:1087'"

alias unjump="unset http_proxy;unset https_proxy"

alias p3=python3

# add git branch to shell
# PS1 origin is \h:\W \u\$
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\h:\W \u\$(parse_git_branch)\$ "


export JAVA_HOME=`/usr/libexec/java_home -v 1.8`


export ANDROID_HOME="$HOME/Library/Android/sdk"


# change path
export PATH=$PATH:$HOME/source/bin/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# auto jump
[[ -s /Users/th/.autojump/etc/profile.d/autojump.sh ]] && source /Users/th/.autojump/etc/profile.d/autojump.sh
