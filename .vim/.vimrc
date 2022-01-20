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
set background=dark
colorscheme snazzy
filetype plugin indent on
" appearance
set showmode
set showcmd
set number
set ruler
set visualbell
set laststatus=2
set scrolloff=3
" encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5
set termencoding=utf-8
" indent and tab
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

" keymappings
source ~/.vim/keymappings.vim
