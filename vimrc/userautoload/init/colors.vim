" colors.vim
" ==================================================================================


" 一般
" ----------------------------------------------------------------------------------
set t_Co=256
syntax on
" カラースキーマ
colorscheme iceberg

" 背景色をターミナルと同じ色にする
autocmd ColorScheme * hi Normal ctermbg=none

" 行番号の色をターミナルと同じ色にする
"autocmd ColorScheme * hi LineNr ctermbg=none

" 現在の行番号の色
hi CursorLineNr term=bold cterm=NONE ctermfg=226 ctermbg=NONE

" コメントの色
hi Comment ctermfg=247
"hi Comment ctermfg=238

" ヴィジュアルモードの選択範囲の色
hi Visual  ctermbg=236

" 閉じ括弧の色
hi MatchParen ctermbg=123

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none
" ----------------------------------------------------------------------------------





" プラグイン毎の設定
" ----------------------------------------------------------------------------------
" ale {{{
autocmd VimEnter,Colorscheme * :hi ALEErrorSign     cterm=bold ctermfg=red
autocmd VimEnter,Colorscheme * :hi ALEWarningSign   cterm=bold ctermfg=yellow
"autocmd VimEnter,Colorscheme * :hi ALEErrorLine     cterm=bold ctermfg=black ctermbg=lightred
autocmd VimEnter,Colorscheme * :hi ALEError         cterm=underline ctermfg=darkmagenta ctermbg=yellow
autocmd VimEnter,Colorscheme * :hi ALEWarning       cterm=underline ctermfg=darkmagenta ctermbg=yellow
" }}}
" ----------------------------------------------------------------------------------
