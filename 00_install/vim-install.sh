#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

if [ ! -e $HOME/.vimrc ]; then
    sudo apt -y install vim
    sudo apt -y install vim-gnome
fi
backup $HOME/.vimrc _vimrc
ln -sf ${dotfiles}/vimrc/_vimrc $HOME/.vimrc
ln -sf ${dotfiles}/vimrc/userautoload/ $HOME/.vim/userautoload
