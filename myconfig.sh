PYTHONPATH=${PYTHONPATH}:/usr/local/lib/python2.7/dist-packages/django/:/usr/local/lib/python2.7/dist-packages/pysmell/
export PYTHONPATH

export LUA_CPATH="$HOME/Documents/lib/lualib/?.so;./?.so"
GEM_PATH=/var/lib/gems/1.8/bin/
CABAL_PATH=/home/skyshaw/.cabal/bin/
MYPATH=~/Documents/bin
TOOL_PATH=/home/skyshaw/Documents/tools/:/home/skyshaw/Documents/code/snippets/sh/
GAE_PATH=~/Documents/bin/google_appengine/

export PATH=$GEM_PATH:$TOOL_PATH:$CABAL_PATH:$PATH

DESKTOP_CDPATH=.:$HOME/Documents/:$HOME/Documents/docs/:$HOME/Documents/work/:$HOME/Documents/code/
LAPTOP_CDPATH=.:$HOME/Documents/code/:$HOME/Documents/src/lua-5.1.4/:$HOME/Documents/docs/:$HOME/Documents/
CDPATH="$DESKTOP_CDPATH:$LAPTOP_CDPATH"

export GOOS=linux
export GOARCH=386
export GOPATH=$HOME/Documents/bin/golib:$HOME/Documents/code/mygo:$HOME/Documents/code/mygo2
export GOROOT=$HOME/Documents/bin/go
export GOBIN=$HOME/Documents/bin/gobin
QEMUPATH=~/Documents/bin/qemu

export PATH=$PATH:$GOROOT/bin:$GAE_PATH:$GOBIN:$QEMUPATH/bin
#GAE_PATH中也有go的可执行文件



if [ -f $HOME/.bash_utils ]; then
    . $HOME/.bash_utils
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
