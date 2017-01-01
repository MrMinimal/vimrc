" Tomsrvimrc witho

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" MISC
set title                " set name of window to the filename
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" Automatically update external changes to the file
set autoread

" Enable syntax highlighting
syntax on

" Spell checking
set spell spelllang=en

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Determine file type by extension
filetype indent plugin on

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
set tabstop=4" Visual number of spaces per tab
set softtabstop=4" Numbers inserted per tab
set shiftwidth=4" How much < and > shift
set expandtab" Convert tabs to spaces
set smarttab

" KEYMAPPING
let mapleader = "\<Space>"

nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>

" Set < and > to multiples of shiftwidth
set shiftround

" Show matching braces
set mps+=<:>
set showmatch
set matchtime=1

" Highlight search results
set hlsearch
set incsearch       " Highlight as you type
set mat=2           " How many tenths of a second to blink when matching brackets

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Always display where the cursor is in the bottom right
set ruler

" Highlight the line the cursor is at
set cursorline

" Stop vim from using sound
set noerrorbells
"set visualbell

" Show visual help when using tab complete in command line
set wildmode=longest,list,full                              " make wildmenu behave like the bash
set wildmenu

" Show commands in the bottom right corner
set showcmd

" Prevent vim from redrawing too often 
set lazyredraw


" Settings for easymotion
"map f <Plug>(easymotion-bd-w)
"map F <Plug>(easymotion-overwin-w)

" Make sure there is no GVIM UI
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" Colorscheme for windows
colo zellner

set guifont=Consolas:h11

set background=dark
colorscheme solarized
