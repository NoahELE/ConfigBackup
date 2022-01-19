" vim-plug plugins
call plug#begin('~/.vim/plugged')
" appearance
Plug 'nlknguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'luochen1990/rainbow'
" functionality
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'raimondi/delimitmate'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/vim-which-key'
call plug#end()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:rainbow_active = 1

let g:lightline = { 'colorscheme': 'snazzy' }

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
function! s:check_back_space() abort 
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <tab> pumvisible() ? "\<c-n>" : <sid>check_back_space() ? "\<tab>" : coc#refresh()
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<c-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <cr> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin 
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"

" Use gt to show documentation in preview window
function! s:show_documentation() 
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!'.&keywordprg.' '.expand('<cword>')
  endif
endfunction

nnoremap <silent> gd :call <sid>show_documentation()<cr>

" vim which key
call which_key#register('<space>', 'g:which_key_map')
let g:which_key_map = {}
let g:which_key_map.n = { 
      \ 'name': '+nerdtree',
      \ 't': 'toggle nerdtree',
      \ 'f': 'find current file in nerdtree',
      \ 'c': 'change nerdtree to cwd',
      \ }
let g:which_key_map.q = {
      \ 'name': '+quit',
      \ 'q': 'quit',
      \ 'Q': 'force quiting',
      \ 's': 'quit and save',
      \ 'S': 'quit and save all',
      \ }
let g:which_key_map.f = {
      \ 'name': '+file',
      \ 's': 'save current',
      \ 'S': 'save all',
      \ 'f': 'open',
      \ }
let g:which_key_map.b = { 
      \ 'name' : '+buffer',
      \ 'b': 'list buffers',
      \ 'd': 'delete buffer',
      \ 'f': 'first buffer',
      \ 'l': 'last buffer',
      \ 'n': 'next buffer',
      \ 'p': 'previous buffer',
      \ 'h': 'home buffer',
      \ '1': 'buffer 1',
      \ '2': 'buffer 2',
      \ '3': 'buffer 3',
      \ '4': 'buffer 4',
      \ '5': 'buffer 5',
      \ '6': 'buffer 6',
      \ '7': 'buffer 7',
      \ '8': 'buffer 8',
      \ '9': 'buffer 9',
      \ }
let g:which_key_map.t = {
      \ 'name': '+tab',
      \ 't': 'list tabs',
      \ 'e': 'new tab',
      \ 'd': 'close tab',
      \ 'n': 'next tab',
      \ 'p': 'previous tab',
      \ }
let g:which_key_map.w = {
      \ 'name': '+window',
      \ 'w': 'switch window',
      \ 'h': 'navigate to left window',
      \ 'l': 'navigate to right window',
      \ 'j': 'navigate to lower window',
      \ 'k': 'navigate to upper window',
      \ 'd': 'close current window',
      \ 's': 'split window horizontally',
      \ 'v': 'split window vertically',
      \ '=': 'split window equally',
      \ 'J': 'decrease window height by 10',
      \ 'K': 'increase window height by 10',
      \ 'H': 'decrease window width by 10',
      \ 'L': 'increase window width by 10',
      \}
let g:which_key_map.c = {
      \ 'name': '+comment',
      \}
let g:which_key_map.g = {
      \ 'name': '+git',
      \}

