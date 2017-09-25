#!/bin/sh

dotfiles=$(cd $(dirname $0) && pwd)
installsh_dir=${dotfiles}/00_install

# zsh
sh ${installsh_dir}/zsh-install.sh

# zsh-syntax-highlighting
sh ${installsh_dir}/zsh-syntax-highlighting-install.sh

# vim
sh ${installsh_dir}/vim-install.sh
