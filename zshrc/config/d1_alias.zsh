# alias
# -------------------------------------------------


# 基本系
# -------------------------------------------------
# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# update, upgrade
alias uup='sudo apt-get update -y; sudo apt-get upgrade -y'
alias shutdown='sl; shutdown -h now'

# ls
function chpwd() { ls -F --color=auto }
alias ls='ls -F --color=auto'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# mkdir
alias mkdir='mkdir -p'

# history
alias h='history'

# exit
alias e='exit'
# -------------------------------------------------


# gdb
# -------------------------------------------------
alias gd='gdb -q'
# -------------------------------------------------


# edit系
# -------------------------------------------------
alias evr='vim ~/.vimrc'
alias ezr='vim ~/.zshrc'
# -------------------------------------------------

# 移動系
# -------------------------------------------------
alias hdc='cd ~/Documents'
alias hdl='cd ~/Downloads'
alias dctf='cd ~/Documents/ctf'
alias pud='pushd'
alias pod='popd'
# -------------------------------------------------


# 着色系
# -------------------------------------------------
# 255色確認するためのコマンド
alias ccn='for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo'
alias ccb='for c in {000..255}; do echo -n "\e[1m\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo'

# pwdの出力に色をつける
alias pwd='echo -e "\e[36;1m${PWD}\e[m"'
# カレントディレクトリをクリップボードにコピーする
alias cpwd='echo -e "\e[36;1m${pwd}\e[m"; \pwd | xsel --clipboard --input'

# grepの出力に色をつける
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
# -------------------------------------------------


# git
# -------------------------------------------------
alias clone='git clone https://github.com/'
alias add='git add'
alias push='git push origin master'
alias pull='git pull origin master'
alias gst='git status'
alias diff='git diff'
# -------------------------------------------------


# joke
# -------------------------------------------------
alias emacs='vim'
alias shutdown='sl; shutdown -h now'
# -------------------------------------------------
