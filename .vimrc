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
" set textwidth=79
set colorcolumn=80
set autoindent

colo desert
nnoremap gp `[v`]

syntax on
filetype plugin on
execute pathogen#infect()


function SetupWebstuff()
    setlocal shiftwidth=2
    setlocal softtabstop=2
    map <buffer> <F7> :call JSHint()<CR>
endfunction

" javascript/css/html
autocmd FileType html call SetupWebstuff()
autocmd FileType htmldjango call SetupWebstuff()
autocmd FileType javascript call SetupWebstuff()
autocmd FileType css call SetupWebstuff()

set errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %m
set errorformat+=%f:\ line\ %l\\,\ col\ NaN\\,\ %m

function JSHint()
    if &ft =~ 'html'
        cexpr system('jshint --extract=always ' . expand('%'))
    else
        cexpr system('jshint ' . expand('%'))
    endif
endfunction

" Show trailing whitepace
highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd Syntax * syn match TrailingWhitespace /\s\+$/ containedin=ALL
