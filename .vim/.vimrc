set nocompatible " set not compatible with vi
let $LANG='en' " set message language
set langmenu=en " set menu's language of gvim. no spaces beside '='

" use win shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

" vim-plug
source ~/.vim/plugins.vim

" font & colorscheme
syntax on
set background=dark
colorscheme snazzy

" personal configurations
filetype plugin indent on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5
set termencoding=utf-8
set autoindent
set expandtab
set smarttab
set number
set ruler
set laststatus=2
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set visualbell
set nobackup
set nowritebackup
set noswapfile
set autoread
set autowrite
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set timeoutlen=500 
set scrolloff=3
set shortmess+=c

" keymappings
source ~/.vim/keymappings.vim
