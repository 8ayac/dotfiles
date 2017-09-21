# vimrc

## 概要
vimの設定ファイル群(VIM version: 8.0)

## 内容物
* _vimrc
* userautoload/
    * init/ > vim本体の設定
    * plugin-settings/ > 各プラグインの設定

## initの中身
|ファイル名             |内容                   |
|:----------------------|:----------------------|
|autocmd.vim            |autocmd系              |
|basic.vim              |基本的な設定(set系)    |
|colors.vim             |色の設定(highlight系)  |
|key-mappings.vim       |キーマップの設定       |
|plugins.vim            |プラグイン(NeoBundle)  |

## 単体でインストールする場合
以下のコマンドを実行するだけ
```
sh $HOME/dotfiles/00_install/vim-install.sh
```

## plugin-settings
各プラグインの設定
```
vimrc
├── VIMRC.md
├── _vimrc
└── userautoload
    ├── init
    │   ├── autocmd.vim
    │   ├── basic.vim
    │   ├── colors.vim
    │   ├── key-mappings.vim
    │   └── plugins.vim
    └── plugin-settings
        ├── NERDtree.vim
        ├── ale.vim
        ├── neocomplete.vim
        └── vim-easymotion.vim
```
