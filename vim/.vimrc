set nocp

filetype off
" Use Vundle to get all the plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Townk/vim-autoclose'
Plugin 'andviro/flake8-vim'
call vundle#end()
filetype plugin indent on
syntax on

set background=dark

"vim-airline customization
let g:airline_detect_whitespace=0
let g:airline_theme="base16_default"
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

" Map the colon to semicolor, easier to write to buffer etc
nnoremap ; :

" Clear the current search
nmap <silent> ,/ :nohlsearch<CR>

"Configure flake8-vim
let g:PyFlakeDisabledMessages = 'E221'
