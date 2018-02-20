# nvim(Neovim)

## 概要
Neovimの設定ファイル群(VIM version: 0.2.3)

## 内容物
* init.vim
* dein/ > プラグインマネージャーdeinの設定
* init/ > Neovim本体の設定
    * plugin_settings/ > 各プラグインの設定

## initの中身
|ファイル名             |内容                   |
|:----------------------|:----------------------|
|autocmd.vim            |autocmd系              |
|basic.vim              |基本的な設定(set系)    |
|colors.vim             |色の設定(highlight系)  |
|key-mappings.vim       |キーマップの設定       |

## 単体でインストールする場合
以下のコマンドを実行するだけ
```
sh $HOME/dotfiles/00_install/neovim-install.sh
```

## plugin-settings
各プラグインの設定
```
nvim
├── NVIMRC.md
├── init.vim
├── dein
│   ├── dein_init.vim
│   ├── dein.toml
│   └─── lazy.toml
└── init
    ├── autocmd.vim
    ├── basic.vim
    ├── colors.vim
    ├── key-mappings.vim
    └── plugin_settings
        ├── ale.vim
        └── vim-easymotion.vim
```
