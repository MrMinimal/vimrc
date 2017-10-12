" Vim configuration without any plugins
" Author: Tom Langwaldt

" =============================== PLUGINS =====================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" ================================== GUI ======================================

" Don't comply to old vi rules
set nocompatible

" Omni complete
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone,preview
set complete=.,w,b,u,t

" Display filename in window
set title

" Enable syntax highlighting
syntax on

" Enable spelling highlight
set spelllang=en
set nospell

" Disable wrapping of text
set nowrap

" Show line numbers
set number
set relativenumber

" Visual offset from screen edge
set scrolloff=1000

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

" Ignore certain files in completion
set wildignore+=.hg,.git,.svn
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest

" Show commands in the bottom right corner
set showcmd

" Prevent vim from redrawing too often
set lazyredraw

" Disable GVIM Gui
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Resize splits automatically
autocmd VimResized * wincmd =

" Colorscheme for windows (if solarized is not installed)
colorscheme evening

" Hope a proper theme is installed
set background=dark
colorscheme solarized

" Cross platform font
set guifont=Consolas:h11

" Always open vim in fullscreen
au GUIEnter * simalt ~x

" Ex file browsing tweaks
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Open files on the right in e.g. :vsp
set splitbelow
set splitright

" Always display the status line, even if only one window is displayed
set laststatus=2

" Display visual aid at 80 characters width
set colorcolumn=80

" Show trailing spaces etc.
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set smarttab

" Indent Guides
let g:indentguides_state = 0
function! IndentGuides()
    if g:indentguides_state
        let g:indentguides_state = 0
        2match None
    else
        let g:indentguides_state = 1
        execute '2match IndentGuides /\%(\_^\s*\)\@<=\%(\%'.(0*&sw+1).'v\|\%'.(1*&sw+1).'v\|\%'.(2*&sw+1).'v\|\%'.(3*&sw+1).'v\|\%'.(4*&sw+1).'v\|\%'.(5*&sw+1).'v\|\%'.(6*&sw+1).'v\|\%'.(7*&sw+1).'v\)\s/'
    endif
endfunction
hi def IndentGuides guibg=#303030
nnoremap <leader>I :call IndentGuides()<cr>





" ================================= FILE ======================================
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Tab settings
set tabstop=2           " Visual number of spaces per tab
set shiftwidth=2        " How much < and > shift
set softtabstop=2       " Numbers inserted per tab
set expandtab           " Convert tabs to spaces

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %


" Settings based on filetype
au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.hpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.jade setlocal expandtab ts=2 sw=2









" =============================== FOLDING =====================================
set foldmethod=indent
set foldnestmax=99      " Show classes and methods





" ================================ SEARCH =====================================
" Case insensitive search except when using capital letters
set infercase
set ignorecase
set smartcase       " if any letter is a capital search case-sensitive

" Recursive file auto complete
set path=.,**

" Use newer regexes
nnoremap / /\v
vnoremap / /\v

" Keep matches in center of screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Not jump when using *
nnoremap * *<c-o>





" ================================= MAPPINGS ===================================
let mapleader = ","

" Easier vimrc editing and reloading
nnoremap <leader>vr :source $MYVIMRC<CR>
nnoremap <leader>ve :e $MYVIMRC<CR>

" Easier explorer access
nnoremap <Leader>e :Vex<CR>

" Easier command typing
noremap ; :
noremap q; q:

" Easier buffer switching
nnoremap H ^
nnoremap L $

" Easier buffer switching
nnoremap J :bn<CR>
nnoremap K :bp<CR>

" Folding
nnoremap <space> za
vnoremap <space> zf

" Omni completion mapping at Ctrl+Space
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

" Make enter behave properly in completion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Moving between splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Substitute
nnoremap <leader>s  :s//<left>
nnoremap <leader>S  :%s//<left>
nnoremap <leader>sv :'<,'>s//<left>

" Clean trailing whitespaces
nnoremap <leader>W mz:%s/\s\+$//<cr>:let @/=''<cr>`z
" Highlight trailing whitespaces
nnoremap <leader>w /\s\+$<cr>

" Spell toggle
"nnoremap <leader>S :set spell! spelllang=en<cr>





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

" Smoother drawing the screen
set ttyfast



" ================================ MAKROS =====================================
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" Call to delete all empty buffers
function! DeleteEmptyBuffers()
    let [i, n; empty] = [1, bufnr('$')]
    while i <= n
        if bufexists(i) && bufname(i) == ''
            call add(empty, i)
        endif
        let i += 1
    endwhile
    if len(empty) > 0
        exe 'bdelete' join(empty)
    endif
endfunction
com! ClearEmpty call DeleteEmptyBuffers()

" =============================== TRAINING ====================================
" Use ; instead of :
nnoremap : <nop>





" ================================= NOTES =====================================
" Edit a remote file with current instance of vim
",e! scp://pi@192.168.0.21//home/pi/Dev/pzzioServer.py

" replace with prompt in current file
" :%s/old/new/gc

" Open all files with .cpp extension
" :arg *.cpp

" Create html page of current file (with syntax highlight)
" :TOhtml

" Indentation pasting
" ]p

" Replace tabs
" retab!

" Replace all trailing whitespaces
" :%s/\s\+$//e
"
" Format selected
" =
"
" Convert selected to uppercase/lowercase
" gu gU
"
" Last insert location
" gi
"
" Last visual selection
" gv
"
" Fix spelling
" z=
"
" Next spell mistake
" [z
"
" ================================= TODOS =====================================
" Change indentation from 2 spaces to 4 spaces
" set ts=2 sts=2 noet
" retab!
" set ts=4 sts=4 et
" retab
