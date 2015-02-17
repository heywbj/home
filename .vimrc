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
nnoremap gp `[v`]

syntax on
filetype plugin indent on
execute pathogen#infect()

" html
autocmd FileType html call SetupHTML()
autocmd FileType htmldjango call SetupHTML()
function SetupHTML()
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal textwidth=160
endfunction

"javascript
autocmd FileType javascript call SetupJavascript()
function JSHint()
    cgetexpr system('jshint ' . expand('%'))
endfunction
function SetupJavascript()
    setlocal shiftwidth=2
    setlocal softtabstop=2

    set errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %m
    autocmd BufWritePost *.js call JSHint()
endfunction

" Run flake8 on save
autocmd FileType python autocmd BufWritePost *.py call Flake8()

" Show trailing whitepace
highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd Syntax * syn match TrailingWhitespace /\s\+$/ containedin=ALL


