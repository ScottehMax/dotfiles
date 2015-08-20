set textwidth=79
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent

autocmd BufWritePost *.py call Flake8()
execute pathogen#infect()
syntax on
