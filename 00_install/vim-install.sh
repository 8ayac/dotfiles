#!/bin/sh

dotfiles=$(cd $(dirname $0) && pwd)
. ${dotfiles}/00_install/0_func.func

backup $HOME/.vimrc/ .vimrc
ln -sf ${dotfiles}/vimrc/_vimrc $HOME/.vimrc
ln -sf ${dotfiles}/vimrc/userautoload/ $HOME/.vim/userautoload
