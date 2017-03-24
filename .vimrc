" Vim configuration without any plugins

" ================================= NOTES =====================================
" Edit a remote file with current instance of vim
",e! scp://pi@192.168.0.21//home/pi/Dev/pzzioServer.py

" replace with prompt in current file
" :%s/old/new/gc

" Open all files with .cpp extension
" :arg *.cpp

" Create html page of current file (with syntax highlight)
" :TOhtml

" Join lines
" J

" Indentation pasting
" ]p

" Replace tabs
" retab

" Replace all trailing whitespaces
" :%s/\s\+$//e





" ================================== GUI ======================================
" Don't comply to old vi rules
set nocompatible

" Omni complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" Display filename in window
set title

" Enable syntax highlighting
syntax on

" Enable spelling highlight
set spell spelllang=en

" Disable wrapping of text
set nowrap

" Show line numbers
set number
set relativenumber

" Visual offset from screen edge
set scrolloff=6

" Show matching braces
set mps+=<:>
set showmatch
set matchtime=1

" Highlight search results (as you type)
set hlsearch
set incsearch

" How many tenths of a second to blink when matching brackets
set mat=2

" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Always display where the cursor is in the bottom right
set ruler

" Highlight the line the cursor is at
set cursorline

" Stop vim from using sound
set noerrorbells

" Proper auto complete for commands
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" Show commands in the bottom right corner
set showcmd

" Prevent vim from redrawing too often 
set lazyredraw

" Disable GVIM Gui
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Colorscheme for windows (if solarized is not installed)
colorscheme zellner

" Hope a proper theme is installed
"set background=dark
"colorscheme solarized

" Cross platform font
set guifont=Consolas:h11

" Always open vim in fullscreen
au GUIEnter * simalt ~x

" Ex file browsing tweaks
let g:netrw_banner=0        " disable banner
let g:netrw_browse_split=4  " open new file in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

" Open files on the right in e.g. :vsp
set splitbelow
set splitright

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display visual aid at 80 characters width
set colorcolumn=80

" Show trailing spaces etc.
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list





" ================================= FILE ======================================
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Tab settings
set tabstop=4           " Visual number of spaces per tab
set softtabstop=4       " Numbers inserted per tab
set shiftwidth=4        " How much < and > shift
set expandtab           " Convert tabs to spaces





" =============================== FOLDING =====================================
set foldmethod=indent
set foldnestmax=2       " Show classes and methods





" ================================ SEARCH =====================================
" Case insensitive search except when using capital letters
set ignorecase
set smartcase       " if any letter is a capital search case-sensitive

" Recursive file auto complete
set path=.,**





" ================================== KEYS =====================================
let mapleader = ","

" Easier vimrc editing and reloading
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>

" Easier explorer access
nnoremap <Leader>e :Ex<CR>

" Easier auto complete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" Easier command typing 
nnoremap ; :

" Easier buffer switching
nnoremap L :bn<CR>
nnoremap H :bp<CR>

" Folding
nnoremap <space> za     " Fold current block
vnoremap <space> zf     " Fold current selection





" ================================= MISC ======================================
" Remember more commands and search history
set history=1000

" Use many levels of undo
set undolevels=1000

" Automatically update external changes to the file
set autoread

" Switch buffers without saving them first
set hidden

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Set intelligent indentation
set autoindent

" Set < and > to multiples of shiftwidth
set shiftround

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
