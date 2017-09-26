#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

if [ ! -e $HOME/.zshrc ]; then
    sudo apt -y install zsh
fi
backup $HOME/.zshrc _zshrc
ln -sf ${dotfiles}/zshrc/_zshrc $HOME/.zshrc
