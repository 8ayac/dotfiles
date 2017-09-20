" basic.vim
" ==================================================================================


" 一般
" ----------------------------------------------------------------------------------
" 文字コードをUFT-8に設定
set fenc=utf-8
" 構文を強調表示する
if has("syntax")
    syntax on
endif
" バックアップファイルを作らない
set nobackup
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 行末の1文字先までカーソルを移動できるように
set virtualedit=block
" インデントはスマートインデント
set smartindent
" 折り返しをしない
set nowrap
" カーソルの回り込みができるようになる
set whichwrap=b,s,[,],<,>
" バックスペースを、空白、行末、行頭でも使えるようにする
set backspace=indent,eol,start
" 無名レジスタに入るデータを、*レジスタにも入れる。
set clipboard=unnamedplus
" Tab キーを押した際にタブ文字の代わりにスペースを入れる
set expandtab
set tabstop=4
set shiftwidth=4
" クリップボードから貼り付ける場合、インデントしない
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
" ----------------------------------------------------------------------------------





" 外観系
" ----------------------------------------------------------------------------------
" 入力中のコマンドをステータスに表示する
set showcmd
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 80列目を強調表示
set colorcolumn=100
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 不可視文字を可視化
set list listchars=tab:»-
" ----------------------------------------------------------------------------------





" 検索系
" ----------------------------------------------------------------------------------
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ----------------------------------------------------------------------------------
