# zshrc

## 概要
zshの設定ファイル群

## 内容物
* _zshrc
* config/
    * zshの設定ファイル > zshrcを分割しただけ

### 分割単位について
```
a: zshの大規模な機能の有効化
b: zshの小規模な機能の有効化
c: zshのプロンプトに関する設定
d: zshのエイリアスに関する設定
z: その他の設定
```

## 単体でインストールする場合
以下のコマンドを実行するだけ
```
sh $HOME/dotfiles/00_install/zsh-install.sh
```

## 構造
```
zshrc
├── ZSHRC.md
├── _zshrc
└── config
    ├── a1_autoload.zsh
    ├── a2_export.zsh
    ├── b1_colors.zsh
    ├── b2_zstyle.zsh
    ├── b3_setopt.zsh
    ├── c1_prompt.zsh
    ├── c2_bindkey.zsh
    ├── d1_alias.zsh
    ├── d2_global-alias.zsh
    └── z1_etc.zsh
```
