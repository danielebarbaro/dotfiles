syntax on
color dracula

set encoding=utf-8 nobomb " Use UTF-8 without BOM
set cursorline " Highlight current line
set hlsearch " Highlight searches
set incsearch " Highlight dynamically as pattern is typed
" set laststatus=2 " Always show status line
set nostartofline " Don’t reset cursor to start of line when moving around.
set ruler " Show the cursor position
set showmode " Show the current mode
set title " Show the filename in the window titlebar
set showcmd " Show the (partial) command as it’s being typed
set nocompatible " Make Vim more useful
set clipboard=unnamed " Use the OS clipboard by default (on versions compiled with `+clipboard`)
set esckeys " Allow cursor keys in insert mode
" set backspace=indent,eol,start " Allow backspace in insert mode
set scrolloff=3 " Start scrolling three lines before the horizontal window border

" set wildmenu " Enhance command-line completion
" set number " Enable line numbers
" set ignorecase " Ignore case of searches
" set gdefault " Add the g flag to search/replace by default


" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure


" Don’t add empty newlines at the end of files
set binary
set noeol

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
" set list

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" Save a file as root (,W)
" noremap <leader>W :w !sudo tee % > /dev/null<CR>
