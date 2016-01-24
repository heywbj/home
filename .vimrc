" general settings
set autoindent
set textwidth=79
set ignorecase
set incsearch
set hlsearch
set modeline
set hidden

" display settings
set number
set background=dark
set colorcolumn=+1
colo desert
nnoremap gp `[v`]


" Show trailing whitepace
highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd Syntax * syn match TrailingWhitespace /\s\+$/ containedin=ALL


" Filetype and filetype-specific settings
syntax on
filetype plugin on

function SetupWebstuff()
	setlocal expandtab
	setlocal shiftwidth=2
	setlocal softtabstop=2

	setlocal errorformat+=%f:\ line\ %l\\,\ col\ %c\\,\ %m
	setlocal errorformat+=%f:\ line\ %l\\,\ col\ NaN\\,\ %m
	map <buffer> <F7> :call JSHint()<CR>
endfunction
function JSHint()
	if &ft =~ 'html'
		cexpr system('jshint --extract=always ' . expand('%'))
	else
		cexpr system('jshint ' . expand('%'))
	endif
endfunction
autocmd FileType html call SetupWebstuff()
autocmd FileType htmldjango call SetupWebstuff()
autocmd FileType javascript call SetupWebstuff()
autocmd FileType css call SetupWebstuff()

function SetupPython()
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal softtabstop=4
endfunction
autocmd Filetype python call SetupPython()


" other plugins
execute pathogen#infect()
