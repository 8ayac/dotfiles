#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

if [ ! -e $HOME/zsh-syntax-highlighting/ ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
fi
backup $HOME/zsh-syntax-highlighting/highlighters zsh-syntax-highlighting
ln -sf ${dotfiles}/zsh-syntax-highlighting/highlighters $HOME/zsh-syntax-highlighting/highlighters
