let $LANG='en' " set message language
set langmenu=en " set menu's language of gvim. no spaces beside '='

" use win shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

" vim-plug
call plug#begin('C:/NeoVim/plugged')
Plug 'mhinz/vim-startify'
Plug 'nlknguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'rakr/vim-one'
Plug 'yuttie/inkstained-vim'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
call plug#end()
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:lightline={'colorscheme':'deus'}
let g:rainbow_active=1

" font & colorscheme
set guifont=Source\ Code\ Pro:h12
set guifontwide=Sarasa\ Mono\ SC:h12
syntax on
set background=dark
colorscheme PaperColor

" personal configurations
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,big5
set termencoding=utf-8
filetype plugin indent on
set autoindent
set expandtab
set smarttab
set number
set relativenumber
set cursorline
set ruler
set laststatus=2
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set visualbell
set nobackup
set noswapfile
set autoread
set autowrite
set wildmenu
set wildmode=list:longest,full
set wildignorecase

" keymappings
let mapleader="\<space>"
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>kk :m-2<CR>
nnoremap <leader>jj :m+1<CR>
noremap <leader>nt :NERDTreeToggle<CR>
noremap <leader>nf :NERDTreeFind<CR>
noremap <leader>nc :NERDTreeCWD<CR>
noremap <leader>p :CtrlP<CR>
noremap <leader>b :buffers<CR>
noremap <leader>bn :bnext<CR>
noremap <leader>bp :bprevious<CR>
noremap <leader>bd :bdelete<CR>
noremap <leader>t :tabs<CR>
noremap <leader>te :tabe<CR>
noremap <leader>tc :tabclose<CR>
noremap <leader>tn :tabnext<CR>
noremap <leader>tp :tabprevious<CR>
noremap <leader>ww <C-w>w
noremap <leader>wc <C-w>c
noremap <leader>ws :split<CR>
noremap <leader>wv :vsplit<CR>
