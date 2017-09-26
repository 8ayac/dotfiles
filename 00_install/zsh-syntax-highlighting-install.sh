#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

backup $HOME/zsh-syntax-highlighting/highlighters zsh-syntax-highlighting
ln -sf ${dotfiles}/zsh-syntax-highlighting/highlighters $HOME/zsh-syntax-highlighting/highlighters
