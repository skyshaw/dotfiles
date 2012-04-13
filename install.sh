
#use set -x to oupout the command executing

function f_link {
    set -x
    ln -s -i $1 $2
    set +x
}

function install {
    f_link $PWD/bashrc $HOME/.bashrc
    f_link $PWD/bash_aliases $HOME/.bash_aliases
    f_link $PWD/tmux.conf $HOME/.tmux.conf
    f_link $PWD/Xmodmap $HOME/.Xmodmap
}

#function f_desktop {
#    f_link $PWD/lab-bashrc $HOME/.bashrc
#    f_link $PWD/bash_aliases $HOME/.bash_aliases
#    f_link $PWD/tmux.conf $HOME/.tmux.conf
#}

USAGE="usage ./install.sh ..."


if [ $# -ne 1 ]; then
    echo $USAGE
elif [ $1 = "labtop" ]; then
    #f_labtop
    install 
elif [ $1 = "desktop" ]; then
    #f_desktop
    install
fi
