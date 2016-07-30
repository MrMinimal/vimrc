" Tomsrvimrc

" ========================= VUNDLE ========================= 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion' 
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ========================= VUNDLE END ========================= 

" MISC
set title                " set name of window to the filename
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" Enable syntax highlighting
syntax on
set background=dark
colorscheme solarized

" Spell checking
set spell spelllang=en

" Make vim not backwards compatible
set nocompatible

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
set tabstop=4		" Visual number of spaces per tab
set softtabstop=4	" Numbers inserted per tab
set shiftwidth=4	" How much < and > shift
set expandtab		" Convert tabs to spaces
set smarttab

" KEYMAPPING
let mapleader = "\<Space>"

nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

nnoremap <leader>: q:

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

" Highlight the line the cursor is at
set cursorline

" Stop vim from using sound
set noerrorbells
set visualbell

" Show visual help when using tab complete in command line
set wildmenu

" Show commands in the bottom right corner
set showcmd

" Prevent vim from redrawing too often 
set lazyredraw
