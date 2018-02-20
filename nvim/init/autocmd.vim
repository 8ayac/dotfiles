" autocmd.vim
" ==================================================================================


" バイナリ編集(xxd)モード(vim -b での起動、または、*bin ファイルを開くと発動する)
augroup BinaryXXD
autocmd!
autocmd BufReadPre *.bin let &binary =1
autocmd BufReadPost * if &binary | silent %!xxd -g 1
autocmd BufReadPost * set ft=xxd | endif
autocmd BufWritePre * if &binary | execute "%!xxd -r" | endif
autocmd BufWritePost * if &binary | silent %!xxd -g 1
autocmd BufWritePost * set nomod | endif
augroup END

" 前回閉じた際ののカーソル位置を復元する
"if has("autocmd")
"   autocmd BufReadPost *
"   \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"   \   exe "normal! g'\"" |
"   \ endif
"endif
if has("autocmd")
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" 保存する際、自動で行末の余分なスペースを削除する
autocmd BufWritePre * :%s/\s\+$//ge
