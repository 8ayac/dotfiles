# autoload
# -------------------------------------------------


# 色を使用可能にする
autoload -Uz colors
colors

# 補完機能を有効にする
autoload -Uz compinit
compinit

# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default

# gitの情報
autoload -Uz vcs_info
precmd () { vcs_info }
