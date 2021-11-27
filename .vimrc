" Plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Plugins go here
    Plug 'wincent/command-t', {
    \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
    \ }

" Initialize plugin system
call plug#end()



" Don't need to be vi compatible
set nocompatible

" Tabs and spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Behave sanely
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

" Set leader
let mapleader = ";"

" Searching/Moving
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Inv characters
set list
set listchars=tab:▸\ ,eol:¬

" Remaps
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :

inoremap jj <ESC>


" Save file on tabbing out of window
au FocusLost * :wa

" Split windows and movement
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remove all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Quicker navigation
noremap K     {
noremap J     }
noremap H     ^
noremap L     $

" Moving in insert mode
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" Run macro
nnoremap Q @q

" Yank till EOL
nnoremap Y y$

"Insert semicolon at EOL
inoremap <leader>; <C-o>A;

" Set timeout length to 400 ms
" set timeoutlen 400 

" Insert line above or below in normal mode
nnoremap OO m`O<ESC>``
nnoremap oo m`o<ESC>``



