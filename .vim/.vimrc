set nocompatible " set not compatible with vi
let $LANG='en' " set message language
set langmenu=en " set menu's language of gvim. no spaces beside '='

" use win shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

" vim-plug
source ~/.vim/plugins.vim

" personal configurations
" font & colorscheme
syntax on
set termguicolors
set background=dark
colorscheme onedark
filetype plugin indent on

" appearance
set showmode
set showcmd
set number
set ruler
set cursorline
set visualbell
set laststatus=2
set scrolloff=3

" encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5,latin1
set termencoding=utf-8

" indent and tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab
set smarttab

" search
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

" file
set nobackup
set nowritebackup
set noswapfile
set autoread
set autowrite

" menu
set wildmenu
set wildignorecase

" mouse
set mouse=a

" timeout
set timeoutlen=300

" mode dependent caret
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" keymappings
source ~/.vim/keymappings.vim

