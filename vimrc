call plug#begin()

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'altercation/vim-colors-solarized'
Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""  basic settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=/usr/local/opt/fzf
set background=dark
colorscheme solarized

let g:indentLine_char = '│'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2


set number
set showmatch
set incsearch
set hlsearch
set ignorecase
set encoding=utf8
set scrolloff=10
set cursorline
set mouse=a
set backspace=indent,eol,start
syntax on
filetype on
filetype plugin on
filetype indent on


" format or indent
set smarttab
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

"""""""""""""""""""""""""""""""""""""""""""""""""
""  key bindings
"""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=','
map <C-n> :NERDTreeToggle<CR>
map <leader>fm <ESC>:FZF ~/Work/Project/mia<CR>

"" Python
let g:ycm_python_binary_path = 'python'
let $PYTHONPATH='/Users/jeff/Work/Project/Server'
