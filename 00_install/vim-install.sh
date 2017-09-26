#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

backup $HOME/.vimrc/ _vimrc
ln -sf ${dotfiles}/vimrc/_vimrc $HOME/.vimrc
ln -sf ${dotfiles}/vimrc/userautoload/ $HOME/.vim/userautoload
