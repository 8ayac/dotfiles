" plugins.vim
" ==================================================================================

if has('vim_starting')
    set nocompatible
    " neobundle をインストールしていない場合は自動インストール
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install neobundle..."
        " vim からコマンド呼び出しているだけ neobundle.vim のクローン
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
    " runtimepath の追加は必須
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'
NeoBundleFetch 'Shougo/neobundle.vim'



" colorscheme
" ==================================================================================
" solarized
NeoBundle 'altercation/vim-colors-solarized'
" mustang
NeoBundle 'croaker/mustang-vim'
" jellybeans
NeoBundle 'nanotech/jellybeans.vim'
" molokai
NeoBundle 'tomasr/molokai'
" vim-one
NeoBundle 'rakr/vim-one'
" vim-material
NeoBundle 'hzchirs/vim-material'
" iceberg
NeoBundle 'cocopon/iceberg.vim'
" vim-dracula
NeoBundle 'crusoexia/vim-dracula'
" ==================================================================================



" NeoBundle
" ==================================================================================
" vim-scripts/sudo.vim
NeoBundle 'vim-scripts/sudo.vim'

" vinarise
NeoBundle 'Shougo/vinarise.vim'

NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\ 'windows' : 'make -f make_mingw32.mak',
\ 'cygwin' : 'make -f make_cygwin.mak',
\ 'mac' : 'make -f make_mac.mak',
\ 'unix' : 'make -f make_unix.mak',
\ },
\ }

" neocomplete {{{
if has('lua')
NeoBundleLazy 'Shougo/neocomplete.vim', {
\ 'depends' : 'Shougo/vimproc',
\ 'autoload' : { 'insert' : 1,}
\ }
endif

" Shougo/vimshell {{{
NeoBundleLazy 'Shougo/vimshell', {
\ 'depends' : 'Shougo/vimproc',
\ 'autoload' : {
\ 'commands' : [{ 'name' : 'VimShell', 'complete' : 'customlist,vimshell#complete'},
\ 'VimShellExecute', 'VimShellInteractive',
\ 'VimShellTerminal', 'VimShellPop'],
\ 'mappings' : ['<Plug>(vimshell_switch)']
\ }}

" Lokaitog/vim-easymotion
NeoBundle 'Lokaltog/vim-easymotion'

" cohama/lexima.vim
NeoBundle 'cohama/lexima.vim'

" scooloose/nerdtree
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'

" jistr/vim-nerdtree-tabs
NeoBundle 'jistr/vim-nerdtree-tabs'

" othree/html5
NeoBundle 'othree/html5.vim'

" jelera/vim-javascript-syntax
NeoBundle 'jelera/vim-javascript-syntax'

" hokaccha/vim-html5validator
NeoBundle 'hokaccha/vim-html5validator'

" tyru/open-browser.vim
NeoBundle 'tyru/open-browser.vim'

" mattn/emmet-vim
NeoBundle 'mattn/emmet-vim'

" kana/vim-submode
NeoBundle 'kana/vim-submode'

" w0rp/ale
NeoBundle 'w0rp/ale'

" osyo-manga/vim-over
NeoBundle 'osyo-manga/vim-over'

" vimrc に記述されたプラグインでインストールされていないものがないかチェックする
NeoBundleCheck
call neobundle#end()
filetype plugin indent on
" ==================================================================================
