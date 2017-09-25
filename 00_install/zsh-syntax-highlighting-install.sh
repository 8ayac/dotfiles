#!/bin/sh

. 0_func.func

backup $HOME/zsh-syntax-highlighting/highlighters zsh-syntax-highlighting/highlighters
ln -sf ${dotfiles}/zsh-syntax-highlighting/highlighters $HOME/zsh-syntax-highlighting/highlighters
