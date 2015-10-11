execute pathogen#infect()

colorscheme solarized
syntax on

set tabstop=4
set softtabstop=4
set expandtab

set number
set showcmd
set cursorline
set statusline=%f

filetype indent on

set wildmenu
set lazyredraw
set showmatch

set laststatus=2  " show status line always

set textwidth=79
set shiftwidth=4
set shiftround
set autoindent
set backspace=2
set nocompatible
set term=builtin_ansi

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
