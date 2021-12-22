" vim-plug plugins
call plug#begin('~/.vim/plugged')
Plug 'nlknguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'
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
let g:rainbow_active=1
let g:lightline={'colorscheme': 'snazzy'}
