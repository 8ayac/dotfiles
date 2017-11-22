" key-mappings.vim
" ==================================================================================


" Ctrl+j で Esc キー
inoremap <C-j> <esc>
" Ctrl-j 連打でハイライト解除
nmap <C-j><C-j> :nohlsearch<CR><Esc>
" vimrc関連を編集したい時
nmap evp :NERDTree<CR> :OpenBookmark vimrc<CR>




" プラグインのキーバインド
" ----------------------------------------------------------------------------------
" Shougo/vimshell {{{
" vs:シェルを起動, vsp:ウィンドウを分割してシェルを起動
nmap <silent> vs :<C-u>VimShell<CR>
nmap <silent> vsp :<C-u>VimShellPop<CR>
" }}}

" Lokaitog/vim-easymotion {{{
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" }}}

" NERDTree {{{
" Treeのトグル
map <C-n> :NERDTreeToggle<CR>
" }}}

" mattn/emmet-vim {{{
" emmetのCtrl+YをCtrl+eに変更
let g:user_emmet_leader_key='<C-e>'
" }}}

" tyru/open-browserm {{{
" gxでカーソル下のURLをブラウザで開く
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
" }}}

" w0rp/ale {{{
" エラー間を移動: ek, ej
nmap <silent> ek <Plug>(ale_previous_wrap)
nmap <silent> ej <Plug>(ale_next_wrap)
nmap <silent> st :ALEToggle<CR>
" }}}
" ----------------------------------------------------------------------------------





" 編集系
" ----------------------------------------------------------------------------------
" tts でタブをスペースに一括で変換する
nmap tts :1,$!expand -4<CR>
" wtts でタブをスペースに一括で変換したあと保存する
nmap wtts :1,$!expand -4<CR>:w<CR>

" Space + O で全体置換(プラグインvim-over併用)
nnoremap <silent> <Space>o :OverCommandLine<CR>%s//g<Left><Left>

" Space + O で選択範囲(プラグインvim-over併用)
vnoremap <silent> <Space>o :OverCommandLine<CR>s//g<Left><Left>

" Ctrl + k でコメントアウトする
nmap <C-K> <Plug>(caw:hatpos:toggle)
vmap <C-K> <Plug>(caw:hatpos:toggle)

" gggでインデント整形
nmap ggg :gg=G<CR>
" ----------------------------------------------------------------------------------





" 選択系
" ----------------------------------------------------------------------------------
" vを二回で行末まで選択
vnoremap v $h
" 行頭、行末へ移動: Shift+H, Shift+L
nmap <S-H> ^
nmap <S-L> $
" ----------------------------------------------------------------------------------





" ウィンドウ操作系
" ----------------------------------------------------------------------------------
" Tab で次のタブへ
" Shift + Tab で前のタブへ
" Ctrl+CでTabを閉じる
nmap <Tab> gt
nmap <S-Tab> gT
nmap <C-t> :tabnew<CR>
nmap <C-C> :tabclose<CR>

nmap s <NOP>

" ss: 水平分割, sv: 垂直分割
nmap ss :split<CR>
nmap sv :vsplit<CR>

" s+[h|j|k|l]で分割したウィンドウに移動
nmap sh <C-w>h
nmap sj <C-w>j
nmap sk <C-w>k
nmap sl <C-w>l

" s+[h|j|k|l]で分割したウィンドウに移動
nmap sH <C-w>H
nmap sJ <C-w>J
nmap sK <C-w>K
nmap sL <C-w>L

" ウィンドウを閉じる
nmap sq :q<CR>

" カレントウィンドウの大きさを変える
" so で縦横最大化
nmap so <C-w> <C-w>|

" sO または s= で大きさを揃える
nmap s= <C-w>=
nmap sO <C-w>=

" s>: 幅を増やす, s<: 幅を減らす
" s+: 高さを増やす, s-: 高さを減らす
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

nmap <silent> tlo :lopen<CR>
nmap <silent> tlc :lclose<CR>
" ----------------------------------------------------------------------------------
