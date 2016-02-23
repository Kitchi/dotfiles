set nocp

filetype off
call pathogen#infect()
filetype plugin indent on
syntax on

set background=dark
"let base16colorspace=256
"colorscheme base16-atelierlakeside
"colorscheme base16-bright

"vim-airline customization
let g:airline_detect_whitespace=0
let g:airline_theme="luna"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set nocompatible
set modelines=0

syntax enable           "Switch on syntax highlighting
set tabstop=3           "Indent by 3 spaces when pressing <TAB>
set shiftwidth=3        "Indent by 3 spaces when using >>, <<, == etc
set expandtab           "Use softtabsstop spaces instead of TAB characters
set autoindent          "Copy indent from previous line
set pastetoggle=<C-P>   "Ctrl-P toggles paste mode

set showmode
set showcmd
set hidden
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set scrolloff=5

set wrap
set colorcolumn=81
set textwidth=79
set formatoptions=qrn1

set grepprg=grep\ -nH\ $*

se t_Co=256

hi Search guibg=blue guifg=grey
hi Search ctermfg=yellow ctermbg=None

let mapleader=","

" Switch to alternate file
map <C-J> :bprevious<cr>
map <C-K> :bnext<cr>
