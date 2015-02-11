set hidden

set number
set background=dark

set ignorecase
set incsearch
set hlsearch

set expandtab
set shiftwidth=4
set tabstop=8
set softtabstop=4
set textwidth=80

colo desert

execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd FileType html setlocal shiftwidth=2 softtabstop=2 
autocmd FileType htmldjango setlocal shiftwidth=2 softtabstop=2 
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 

" Show trailing whitepace and spaces before a tab:
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
set colorcolumn=+1

