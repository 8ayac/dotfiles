#!/bin/sh

. 0_func.func

backup $HOME/.zshrc .zshrc
ln -sf ${dotfiles}/zshrc/_zshrc $HOME/.zshrc
