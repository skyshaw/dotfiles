
#use set -x to oupout the command executing

function labtop() {
    set -x
    ln -s -i $PWD/bashrc $HOME/.bashrc
    ln -s -i $PWD/bash_aliases $HOME/.bash_aliases
    set +x
}

function desktop() {
    set -x
    ln -s -i $PWD/lab-bashrc $HOME/.bashrc
    ln -s -i $PWD/bash_aliases $HOME/.bash_aliases
    set +x
}

USAGE="usage ./install.sh ..."


if [ $# -ne 1 ]; then
    echo $USAGE
elif [ $1 = "labtop" ]; then
    labtop
elif [ $1 = "desktop" ]; then
    desktop;
fi

