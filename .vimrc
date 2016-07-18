" Toms vimrc

" MISC
set title                " set name of window to the filename
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" Spell checking
set spell spelllang=en

" Make vim not backwards compatible
set nocompatible

" Determine file type by extension
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Case insensitive search except when using capital letters
set ignorecase
set smartcase       " if any letter is a capital search case-sensitive

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

" Set < and > to multiples of shiftwidth
set shiftround

" Show matching braces
set showmatch

" Highlight search results
set hlsearch
set incsearch       " Highlight as you type

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Always display where the cursor is in the bottom right
set ruler
