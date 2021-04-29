" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" use win shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

set nocompatible " set not compatible with vi
let $LANG='en'  " set message language
set langmenu=en   " set menu's language of gvim. no spaces beside '='

" vim-plug
call plug#begin('$VIM/vimfiles/plugged')
Plug 'mhinz/vim-startify'
Plug 'nlknguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'rakr/vim-one'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'raimondi/delimitmate'
Plug 'luochen1990/rainbow'
Plug 'easymotion/vim-easymotion'
call plug#end()
let g:lightline={'colorscheme':'deus'}
let g:ctrlp_map='<c-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:rainbow_active=1

" font & colorscheme
set guifont=Source\ Code\ Pro:h12
set guifontwide=Sarasa\ Mono\ SC:h12
syntax on
set t_Co=256
set background=dark
colorscheme PaperColor

" personal configurations
set showmode
set showcmd
set guioptions=
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


" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

