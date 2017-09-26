#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

if [ ! -e $HOME/.config/terminator ]; then
    sudo apt -y install terminator
    mkdir -p $HOME/.config/terminator
fi
backup $HOME/.config/terminator/config terminator
ln -sf ${dotfiles}/terminator/config $HOME/.config/terminator/config
