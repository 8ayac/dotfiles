#!/bin/sh

. 0_func.func

backup $HOME/.vimrc/ .vimrc
ln -sf ${dotfiles}/vimrc/_vimrc $HOME/.vimrc
ln -sf ${dotfiles}/vimrc/userautoload/ $HOME/.vim/userautoload
