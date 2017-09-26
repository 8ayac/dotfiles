#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

if [ ! -e $HOME/.config/terminator/config ]; then
    sudo apt -y install terminator
fi
backup $HOME/.config/terminator/config terminator
ln -sf ${dotfiles}/terminator/config $HOME/.config/terminator/config
