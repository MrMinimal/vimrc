" Tomsrvimrc

" ========================= VUNDLE ========================= 
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion' 
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe' 
"Plugin 'vim-scripts/Conque-GDB'
call vundle#end()            " required
filetype plugin indent on    " required
" ========================= VUNDLE END ========================= 

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' 


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
set wildmode=longest,list,full                              " make wildmenu behave like the bash
set wildmenu

" Show commands in the bottom right corner
set showcmd

" Prevent vim from redrawing too often 
set lazyredraw


" Settings for easymotion
map f <Plug>(easymotion-bd-w)
map F <Plug>(easymotion-overwin-w)
