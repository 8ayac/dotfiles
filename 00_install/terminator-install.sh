#!/bin/sh

dotfiles=$(cd $(dirname $0) && pwd)/..
. ${dotfiles}/00_install/0_func.func

backup $HOME/.config/terminator/config terminator
ln -sf ${dotfiles}/terminator/config $HOME/.config/terminator/config
