let $LANG='en'  " set message language
set langmenu=en   " set menu's language of gvim. no spaces beside '='

" use win shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

" vim-plug
call plug#begin('$VIM/plugged')
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
Plug 'scrooloose/nerdcommenter'
Plug 'raimondi/delimitmate'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/vim-which-key'
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
let mapleader="\<Space>"
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeCWD<CR>
nnoremap <leader>p :CtrlP<CR>
noremap <leader>jj :m+1<CR>
noremap <leader>kk :m-2<CR>
noremap <leader>qq :q<CR>
noremap <leader>qQ :q!<CR>
noremap <leader>qs :wq<CR>
noremap <leader>qS :wqa<CR>
noremap <leader>fs :w<CR>
noremap <leader>fS :wa<CR>
noremap <leader>ff :e 
noremap <leader>bb :buffers<CR>
noremap <leader>bh :Startify<CR>
noremap <leader>bd :bdelete<CR>
noremap <leader>bn :bnext<CR>
noremap <leader>bp :bprevious<CR>
noremap <leader>bf :bfirst<CR>
noremap <leader>bl :blast<CR>
noremap <leader>tt :tabs<CR>
noremap <leader>te :tabe<CR>
noremap <leader>td :tabclose<CR>
noremap <leader>tn :tabnext<CR>
noremap <leader>tp :tabprevious<CR>
noremap <leader>ww <C-w>w
noremap <leader>wh <C-w>h
noremap <leader>wl <C-w>l
noremap <leader>wj <C-w>j
noremap <leader>wk <C-w>k
noremap <leader>wd <C-w>c
noremap <leader>ws <C-w>s
noremap <leader>wv <C-w>v
noremap <leader>w= <C-w>=
noremap <leader>wK <C-w>5-
noremap <leader>wJ <C-w>5+
noremap <leader>wH <C-w>5<
noremap <leader>wL <C-w>5>
