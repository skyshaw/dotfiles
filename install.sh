
#use set -x to oupout the command executing

function f_link {
    set -x
    ln -s -i $1 $2
    set +x
}

function f_labtop {
    f_link $PWD/bashrc $HOME/.bashrc
    f_link $PWD/bash_aliases $HOME/.bash_aliases
}

function f_desktop {
    f_link $PWD/lab-bashrc $HOME/.bashrc
    f_link $PWD/bash_aliases $HOME/.bash_aliases
}

USAGE="usage ./install.sh ..."


if [ $# -ne 1 ]; then
    echo $USAGE
elif [ $1 = "labtop" ]; then
    f_labtop
elif [ $1 = "desktop" ]; then
    f_desktop
fi
