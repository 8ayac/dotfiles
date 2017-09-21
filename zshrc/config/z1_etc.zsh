# etc
# -------------------------------------------------


# zsh-syntax-highlighting
if [ ! -e $HOME/zsh-syntax-highlighting ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
fi
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
