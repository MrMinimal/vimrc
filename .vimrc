" e! scp://pi@192.168.0.21//home/pi/Dev/pzzioServer.py                      // Edit a remote file with current instance of vim
" :%s/old/new/gc                                                            // replace with prompt in current file
" :arg *.cpp                                                                // pualsdkfj

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

" Omni complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" MISC
set title                " set name of window to the filename
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

" Automatically update external changes to the file
set autoread

" Enable syntax highlighting
syntax on

" Switch buffers without saving them first
set hidden

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

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

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
set tabstop=4           " Visual number of spaces per tab
set softtabstop=4       " Numbers inserted per tab
set shiftwidth=4        " How much < and > shift
set expandtab           " Convert tabs to spaces
set smarttab

" Fold everything deeper than two
set foldmethod=syntax
set foldlevelstart=2

" KEYMAPPING
let mapleader = "\<Space>"

nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>

nnoremap <Leader>e :Ex<CR>

" Easier auto complete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

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

" needs to be installed
set background=dark
colorscheme solarized

au GUIEnter * simalt ~x

" Tweaks for file browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

" Open files on the right in e.g. :vsp
set splitbelow
set splitright

" Always display the status line, even if only one window is displayed
set laststatus=2

" Prevent word wrapping
set tw=0
