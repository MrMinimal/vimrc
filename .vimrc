" Toms vimrc

" MISC

" Spell checking
set spell spelllang=en

" Make vim not backwards compatible
set nocompatible

" Determine file type by extension
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Better syntax completion
set wildmenu

" Case insensitive search except wehn using capital letters
set ignorecase
set smartcase

" Disable wrapping
set nowrap

" Set intelligent indentation
set autoindent

" Show line numbers
set number

" Visual offset
set scrolloff=8

" Tab settings
set tabstop=4		" Visual number of spaces per tab
set softtabstop=4	" Numbers inserted per tab
set shiftwidth=4	" How much < and > shift
set expandtab		" Convert tabs to spaces
set smarttab

" KEYMAPPING
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
