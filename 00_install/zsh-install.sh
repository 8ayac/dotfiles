#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

backup $HOME/.zshrc _zshrc
ln -sf ${dotfiles}/zshrc/_zshrc $HOME/.zshrc
