#!/bin/sh

dotfiles=$(cd $(dirname $0) && pwd)
. ${dotfiles}/0_func.func

backup $HOME/dotfiles/terminator terminator
ln -sf ${dotfiles}/terminator/config $HOME/.config/terminator/config
