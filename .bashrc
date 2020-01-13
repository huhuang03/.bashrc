[[ -s $PWD/local.sh ]] && source $PWD/local.sh

# some alias and quick func
function clone() {
	git clone --depth 1 $1
}

function sce() {
[[ -s $1 ]] && source $1
}

function say_done() {
	osascript -e 'display notification "Task Done" with title "Notify"'
}

function acode() {
    open -a 'Android Studio' $1
}

# parse_git_branch() {
#     echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'`
# }

# branch_info=$(parse_git_branch)
# setopt prompt_subst
# PROMPT='[%~]$ ${branch_info}'
if [ -n "$ZSH_VERSION" ]; then
    #. $HOME/source/.bashrc/git-completion.zsh
    # sce $HOME/source/.bashrc/git-completion.zsh
    # zsh_show_git_branch
fi

PROXY_PORT=7890
alias jump="export http_proxy='http:://127.0.0.1:$PROXY_PORT';export https_proxy='http://127.0.0.1:$PROXY_PORT'"

alias unjump="unset http_proxy;unset https_proxy"

alias p3=python3

alias unmerged_rm='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

alias cleantmp="rm -rf $HOME/tmp/*"

alias bp="$SRC_HOME/clone/iScript/pan.baidu.com.py"

alias ts="ssh th@106.54.140.147"
alias em="open -a Emacs.app $1"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"


function lg() {
    adb logcat -s $1
}

function hide {
    chmod 000 $1
}

function unhide() {
    chmod 755 $1
}


# add git branch to shell
# PS1 origin is \h:\W \u\$
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# some home
[[ -s /usr/libexec/java_home ]] && export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export ANDROID_HOME="$HOME/Library/Android/sdk"

# BDB_HOME
export BDB_HOME="/usr/local/BerkeleyDB.4.4/"

export NODE_PATH=/usr/local/lib/node_modules
export SOURCE_HOME="$HOME/source"
export FLUTTER_HOME="$SOURCE_HOME/flutter"
export DART_HOME="$FLUTTER_HOME/bin/cache/dart-sdk"


# change path
export PATH=$PATH:$HOME/source/bin/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$FLUTTER_HOME/bin
export PATH=$PATH:$HOME/source/clone/nand2tetris/tools
export PATH=$PATH:$HOME/source/clone/depot_tools
# for cmake
export PATH=$PATH:$ANDROID_HOME/cmake/3.10.2.4988404/bin
# for util
export PATH=$PATH:$SOURCE_HOME/util/bin
export PATH=$PATH:$BDB_HOME/bin/
export PATH=$PATH:$HOME/p/ghidra_9.1-BETA_DEV
export PATH=$PATH:$HOME/source/dex-tools-2.1-SNAPSHOT
export PATH=$PATH:$HOME/source/fuchsia/.jiri_root/bin
export PATH=/usr/local/sbin:$PATH
export PATH=~/.local/:$PATH
export PATH=$FLUTTER_HOME/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=$PATH:"/Users/th/Library/Python/3.7/bin"
export PATH=$PATH:$DART_HOME/bin
export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.3


# auto jump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh


# config ld
export LD_LIBRARY_PATH=$BDB_HOME/lib:$LD_LIBRARY_PATH

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

alias cnflutter="export PUB_HOSTED_URL=https://pub.flutter-io.cn; export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn"
alias uncnflutter="unset PUB_HOSTED_URL;unset FLUTTER_STORAGE_BASE_URL"

# emcc
export EMSDK=/Users/th/source/emsdk
export PATH=$PATH:/Users/th/source/emsdk
export PATH=$PATH:/Users/th/source/emsdk/upstream/emscripten
export PATH=$PATH:/Users/th/source/emsdk/node/12.9.1_64bit/bin
export EM_CONFIG=/Users/th/.emscripten
export EMSDK_NODE=/Users/th/source/emsdk/node/12.9.1_64bit/bin/node

alias ii=open


# Some links
# how to handle the pwd issue?
# emacs mybashrc.org --batch -f org-babel-tangle > /dev/null 2>&1
# source $SOURCE_HOME/.bashrc/mybashrc
