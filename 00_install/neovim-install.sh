#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

if [ ! -e $HOME/.config/nvim ]; then
    sudo apt -y install software-properties-common
    echo | sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt -y update
    sudo apt -y install neovim
    sudo apt -y install python-dev python-pip python3-dev python3-pip
    pip install neovim
    pip3 install neovim
fi

if [ ! -e $HOME/.cache/dein ]; then
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.cache/dein/
fi

backup $HOME/.config/nvim nvim
mkdir -p $HOME/.config/nvim
ln -sf ${dotfiles}/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf ${dotfiles}/nvim/init/ $HOME/.config/nvim/init
ln -sf ${dotfiles}/nvim/dein/ $HOME/.config/nvim/dein
