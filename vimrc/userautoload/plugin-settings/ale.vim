" w0rp/ale {{{

" 左端のシンボル絡むを表示したままにする
let g:ale_sign_column_always = 1

" シンボルを変更する
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'

" エラーと警告数をステータスラインに表示する
let g:lightline = {
  \'active': {
  \  'left': [
  \    ['mode', 'paste'],
  \    ['readonly', 'filename', 'modified', 'ale'],
  \  ]
  \},
  \'component_function': {
  \  'ale': 'ALEGetStatusLine'
  \}
  \ }

" ステータスラインで表示するフォーマットを変更する
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']


let g:ale_open_list = 1
" エラーと警告がなくなっても開いたままにする
let g:ale_keep_list_window_open = 1

" }}}
