" use win shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

" vim-plug plugins
source ~/.vim/plugins.vim

" font & colorscheme
set guifont=Source\ Code\ Pro:h12
set guifontwide=Sarasa\ Mono\ SC:h12
syntax on
set background=dark
colorscheme snazzy

" personal configurations
filetype plugin indent on
set showmode
set showcmd
set guioptions=
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5
set termencoding=utf-8
set autoindent
set expandtab
set smarttab
set number
set cursorline
set ruler
set laststatus=2
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set noerrorbells
set novisualbell
set nobackup
set noswapfile
set autoread
set autowrite
set wildmenu
set wildmode=list:longest,full
set wildignorecase
set timeoutlen=500 
set scrolloff=3

" keymappings
source ~/.vim/keymappings.vim
