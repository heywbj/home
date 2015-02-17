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
set textwidth=79
set colorcolumn=+1

colo desert
execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd FileType html setlocal shiftwidth=2 softtabstop=2 textwidth=160
autocmd FileType htmldjango setlocal shiftwidth=2 softtabstop=2 textwidth=160
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2

" Show trailing whitepace
highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd Syntax * syn match TrailingWhitespace /\s\+$/ containedin=ALL
