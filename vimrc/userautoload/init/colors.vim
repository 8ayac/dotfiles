" colors.vim
" ==================================================================================

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
"hi Comment ctermfg=247
hi Comment ctermfg=238

" ヴィジュアルモードの選択範囲の色
hi Visual  ctermbg=236

" 閉じ括弧の色
hi MatchParen ctermbg=123

