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

"javascript
autocmd FileType javascript call SetupJavascript()

set errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %m
set errorformat+=%f:\ line\ %l\\,\ col\ NaN\\,\ %m

function JSHint()
    if &ft =~ 'html'
        cexpr system('jshint --extract=always ' . expand('%'))
    else
        cexpr system('jshint ' . expand('%'))
    endif
endfunction

function SetupJavascript()
    setlocal shiftwidth=2
    setlocal softtabstop=2
    autocmd BufWritePost *.js call JSHint()
endfunction

" html
autocmd FileType html call SetupHTML()
autocmd FileType htmldjango call SetupHTML()

function SetupHTML()
    setlocal shiftwidth=2
    setlocal softtabstop=2
    setlocal textwidth=160
    map <buffer> <F7> :call JSHint()<CR>
endfunction

" Run flake8 on save
autocmd FileType python autocmd BufWritePost *.py call Flake8()

" Show trailing whitepace
highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd Syntax * syn match TrailingWhitespace /\s\+$/ containedin=ALL


