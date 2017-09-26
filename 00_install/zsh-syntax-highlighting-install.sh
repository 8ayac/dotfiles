#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

backup $HOME/zsh-syntax-highlighting/highlighters zsh-syntax-highlighting
if [ ! -e $HOME/zsh-syntax-highlighting/ ]; then
	git clone https://github.com/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
fi
ln -sf ${dotfiles}/zsh-syntax-highlighting/highlighters $HOME/zsh-syntax-highlighting/highlighters
