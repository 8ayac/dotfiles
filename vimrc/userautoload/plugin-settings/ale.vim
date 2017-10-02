" w0rp/ale {{{
autocmd VimEnter * :ALEToggle

" 左端のシンボルカラムを表示したままにする
let g:ale_sign_column_always = 1

" シンボルを変更する
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'

" listwindowを開く
let g:ale_open_list = 1

" エラーと警告がなくなっても開いたままにする
let g:ale_keep_list_window_open = 1

" オープン時のチェックはなしにする
let g:ale_lint_on_enter = 0

" }}}
