set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state($HOME . '/.config/nvim/dein')
    " XDG base directory compartible
    let g:dein#cache_directory = $HOME . '/.cache/dein'

    call dein#begin($HOME . '/.config/nvim/dein')

    let s:toml_dir = $HOME . '/.config/nvim/dein'
    let s:toml     = s:toml_dir . '/dein.toml'
    let s:lazy_toml= s:toml_dir . '/lazy.toml'

    call dein#load_toml(s:toml,      {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif
