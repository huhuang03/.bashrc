# some alias and quick func
# Java Home
export JAVA_HOME=$(/usr/libexec/java_home -v 12)

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

function icode() {
    open -a 'IntelliJ IDEA CE' $1
}

function xcode() {
    open -a 'XCode.app' $1
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


function hide {
    chmod 000 $1
}

function unhide() {
    chmod 755 $1
}

function ubuntu_cn_repo {
}


# add git branch to shell
# PS1 origin is \h:\W \u\$
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# some home

export PROTOBUF_ROOT_DIR=/usr/local/opt/protobuf
export OPENSSL_ROOT_DIR=/usr/local/opt/openssl@1.1
export DEX2JAR_HOME="$HOME/source/dex-tools-2.1-SNAPSHOT/"
export SOURCE_HOME="$HOME/source"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NDK_HOME="$ANDROID_HOME/ndk/21.1.6352462"
export ANDROID_NDK_HOME="$NDK_HOME"
export BOOST_ROOT="/usr/local/Cellar/boost/1.70.0/"

# BDB_HOME
export BDB_HOME="/usr/local/BerkeleyDB.4.4/"


export NODE_PATH=/usr/local/lib/node_modules
export FLUTTER_HOME="$SOURCE_HOME/flutter"
export DART_HOME="$FLUTTER_HOME/bin/cache/dart-sdk"

export GHIDRA_HOME="$SOURCE_HOME/ghidra/ghidra_9.1.2_PUBLIC"


# change path
export PATH=$PATH:$GHIDRA_HOME/
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
export PATH=$PATH:$HOME/source/dex-tools-2.1-SNAPSHOT
export PATH=$PATH:$HOME/source/fuchsia/.jiri_root/bin
export PATH=/usr/local/sbin:$PATH
export PATH=~/.local/:$PATH
export PATH=$FLUTTER_HOME/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=$PATH:"/Users/th/Library/Python/3.7/bin"
export PATH=$PATH:$DART_HOME/bin
export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.3
export PATH=$PATH:$ANDROID_HOME/ndk-bundle
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:/Library/Apple/usr/bin/
export PATH=$PATH:$DEX2JAR_HOME


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
export PATH=$PATH:$HOME/source/depot_tools
export PATH=$PATH:$HOME/source/mkbootimg_tools
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Users/th/u/source/vcpkg/
export PATH=$PATH:$HOME/source/nasm-2.15.05
export PATH=$PATH:$JAVA_HOME/bin

alias ii=open


# Some links
# how to handle the pwd issue?
cd "$SOURCE_HOME/.bashrc"
emacs mybashrc.org --batch -f org-babel-tangle > /dev/null 2>&1
source $SOURCE_HOME/.bashrc/mybashrc
cd - > /dev/null

export ENABLE_FLUTTER_DESKTOP=true


# Alias
PROXY_PORT=7890
alias jump="export http_proxy='http://127.0.0.1:$PROXY_PORT';export https_proxy='http://127.0.0.1:$PROXY_PORT'"
alias unjump="unset http_proxy;unset https_proxy"
alias nodejump="npm config set proxy http://127.0.0.1:$PROXY_PORT;npm config set https-proxy http://127.0.0.1:$PROXY_PORT"
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
alias s3=sqlite3
alias pi="ssh pi@192.168.2.188"
alias pi_dm="ssh pi@172.16.23.36"
alias agdb="$NDK_HOME/21.1.6352462/prebuilt/darwin-x86_64/bin/gdb"
# alias aas="$NDK_HOME/21.1.6352462/toolchains/llvm/prebuilt/darwin-x86_64/arm-linux-androideabi/bin/as"
# alias ald="$NDK_HOME/21.1.6352462/toolchains/llvm/prebuilt/darwin-x86_64/arm-linux-androideabi/bin/ld"


# brew don't upgrade
HOMEBREW_NO_AUTO_UPDATE=1


# python virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=python3

if [[ "$PWD" == "$HOME" ]]
then
    cd ~/source
fi


export GOPATH=~/u/go


alias ec=emacsclient

cur_dir="$(dirname "$0")"
[[ -s $cur_dir/local.sh ]] && source $cur_dir/local.sh

