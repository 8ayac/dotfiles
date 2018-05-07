#!/bin/sh

. $HOME/dotfiles/00_install/0_func.func

if !(type "tmux" > /dev/null 2>&1); then
    sudo -E apt install libevent-dev libncurses-dev automake autoconf pkg-config
    git clone https://github.com/tmux/tmux.git $HOME/tmux
    cd $HOME/tmux
    sudo -E autogen.sh
    sudo -E ./configure && sudo -E make
    sudo -E mv tmux /usr/local/bin
fi

if !(type "spark" > /dev/null 2>&1); then
    curl -O https://raw.githubusercontent.com/holman/spark/master/spark
    sudo -E mv spark /usr/local/bin
    sudo -E chmod u+x /usr/local/bin/spark
fi

if !(type "battery" > /dev/null 2>&1); then
    curl -O https://raw.githubusercontent.com/goles/battery/master/battery
    sudo -E mv battery /usr/local/bin
    sudo -E chmod u+x /usr/local/bin/battery
fi

if [ ! -e $HOME/.tmux ]; then
    mkdir -p $HOME/.tmux/plugins/tpm/
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
    git clone https://github.com/tmux-plugins/tmux-cpu $HOME/.tmux/plugins/tmux-cpu
fi

backup $HOME/.tmux.conf _tmux.conf
ln -sf ${dotfiles}/tmux/_tmux.conf $HOME/.tmux.conf
