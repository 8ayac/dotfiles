#!/bin/sh

dotfiles=$(cd $(dirname $0) && pwd)
. ${dotfiles}/0_func.func

backup $HOME/.zshrc .zshrc
ln -sf ${dotfiles}/zshrc/_zshrc $HOME/.zshrc
