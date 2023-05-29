let mapleader = "\<Space>"

call plug#begin()

 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'

 Plug 'neoclide/coc.nvim', {'branch': 'release'}

 Plug 'itchyny/lightline.vim'
 Plug 'preservim/nerdtree'
" Plug 'dense-analysis/ale'
 Plug 'airblade/vim-rooter'
 Plug 'christoomey/vim-tmux-navigator'
 " Themes
 Plug 'jacoborus/tender.vim'
 Plug 'shaunsingh/solarized.nvim'
 Plug 'github/copilot.vim'

 " Markdown preview
 Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

 " Firenvim
 Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }


 " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting


set relativenumber
set number


" ESP gets rid of highlights
nnoremap <esc> :noh<return><esc>


" Quick Buffer navigation
map gn :bn<cr>
map gp :bp<cr>
" Delete buffer
map <leader>bd :bd<cr>  


" Insert new line before and after current line
" map oo :o<esc>k
" map OO :O<esc>j

" COLOR SCHEME: Tender
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
" Solarized light default theme
set background=light
colorscheme solarized

" To change theme to dark use
" colorscheme tender

let g:lightline = { 'colorscheme': 'tender' }

let g:airline_theme = 'tender'

" TAB settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Rust fmt on save
" let g:rustfmt_autosave = 1
" let g:rustfmt_emit_files = 1
" let g:rustfmt_fail_silently = 0




