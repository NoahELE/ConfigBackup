" use win shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

" vim-plug plugins
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
set laststatus=2
set scrolloff=3
set noerrorbells
set novisualbell

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

" keymappings
source ~/.vim/keymappings.vim

