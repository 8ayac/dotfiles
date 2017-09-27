#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func
dir=${dotfiles}/zsh-syntax-highlighting/highlighters

if [ ! -e $HOME/zsh-syntax-highlighting/ ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
fi
backup $HOME/zsh-syntax-highlighting/highlighters zsh-syntax-highlighting

cp -rf ${dir}/brackets-highlighter.zsh $HOME/zsh-syntax-highlighting/highlighters/brackets/brackets-highlighter.zsh
cp -rf ${dir}/cursor-highlighter.zsh $HOME/zsh-syntax-highlighting/highlighters/cursor/cursor-highlighter.zsh
cp -rf ${dir}/line-highlighters.zsh $HOME/zsh-syntax-highlighting/highlighters/line/line-highlighter.zsh
cp -rf ${dir}/main-highlighters.zsh $HOME/zsh-syntax-highlighting/highlighters/main/main-highlighter.zsh
cp -rf ${dir}/pattern-highlighters.zsh $HOME/zsh-syntax-highlighting/highlighters/pattern/pattern-highlighter.zsh
cp -rf ${dir}/root-highlighters.zsh $HOME/zsh-syntax-highlighting/highlighters/root/root-highlighter.zsh
