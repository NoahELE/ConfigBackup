" vim-plug plugins
call plug#begin('~/.vim/plugged')
" theme
Plug 'nlknguyen/papercolor-theme'
Plug 'morhetz/gruvbox'
Plug 'connorholyday/vim-snazzy'
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
" functionality
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/vim-which-key'
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'
call plug#end()

" ayu
let ayucolor = 'mirage'

" startify
let g:startify_custom_header = startify#center([ 
        \'███╗   ██╗ ██████╗  █████╗ ██╗  ██╗███████╗██╗     ███████╗',
        \'████╗  ██║██╔═══██╗██╔══██╗██║  ██║██╔════╝██║     ██╔════╝',
        \'██╔██╗ ██║██║   ██║███████║███████║█████╗  ██║     █████╗  ',
        \'██║╚██╗██║██║   ██║██╔══██║██╔══██║██╔══╝  ██║     ██╔══╝  ',
        \'██║ ╚████║╚██████╔╝██║  ██║██║  ██║███████╗███████╗███████╗',
        \'╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝',
        \])

" lightline
let g:lightline = { 'colorscheme': 'one' }

" easymotion
let g:EasyMotion_smartcase = 1

" coc.nvim
let g:coc_global_extensions = [
        \'coc-explorer',
        \'coc-lists',
        \'coc-vimlsp',
        \'coc-marketplace',
        \'coc-snippets',
        \'coc-json',
        \'coc-xml',
        \'coc-yaml',
        \'coc-toml',
        \'coc-html',
        \'coc-pyright',
        \'coc-java',
        \'coc-tsserver',
        \'coc-clangd',
        \'coc-go',
        \'coc-rust-analyzer',
        \'coc-yank',
        \]

set hidden
set updatetime=300
set signcolumn=yes
set shortmess+=c

inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#next(1): <sid>CheckBackspace() ? "\<Tab>" : coc#refresh()
inoremap <expr> <s-tab> coc#pum#visible() ? coc#pum#prev(1) : "\<c-h>"

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1 
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nmap <silent> [g <plug>(coc-diagnostic-prev)
nmap <silent> ]g <plug>(coc-diagnostic-next)
nmap <silent> gd <plug>(coc-definition)
nmap <silent> gy <plug>(coc-type-definition)
nmap <silent> gi <plug>(coc-implementation)
nmap <silent> gr <plug>(coc-references)

function! s:show_documentation() 
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!'.&keywordprg.' '.expand('<cword>')
  endif
endfunction

nnoremap <silent> K :call <sid>show_documentation()<cr>

nmap <f2> <plug>(coc-rename)

" vim which key
call which_key#register(' ', 'g:which_key_map')

let g:which_key_map = {}

let g:which_key_map['q'] = {
        \'name': '+quit',
        \'q': 'quit',
        \'Q': 'force quiting',
        \'s': 'quit and save',
        \'S': 'quit and save all',
        \}

let g:which_key_map['f'] = {
        \'name': '+file',
        \'e': 'open',
        \'f': 'fuzzy find',
        \'l': 'file tree',
        \'s': 'save current',
        \'S': 'save all',
        \}

let g:which_key_map['b'] = { 
        \'name' : '+buffer',
        \'b': 'list buffers',
        \'d': 'delete buffer',
        \'f': 'first buffer',
        \'l': 'last buffer',
        \'n': 'next buffer',
        \'p': 'previous buffer',
        \'h': 'home buffer',
        \'1': 'buffer 1',
        \'2': 'buffer 2',
        \'3': 'buffer 3',
        \'4': 'buffer 4',
        \'5': 'buffer 5',
        \'6': 'buffer 6',
        \'7': 'buffer 7',
        \'8': 'buffer 8',
        \'9': 'buffer 9',
        \}

let g:which_key_map['t'] = {
        \'name': '+tab',
        \'t': 'list tabs',
        \'e': 'new tab',
        \'d': 'close tab',
        \'n': 'next tab',
        \'p': 'previous tab',
        \'f': 'first tab',
        \'l': 'last tab',
        \}

let g:which_key_map['w'] = {
        \'name': '+window',
        \'w': 'switch window',
        \'h': 'navigate left',
        \'l': 'navigate right',
        \'j': 'navigate lower',
        \'k': 'navigate upper',
        \'n': 'new window',
        \'c': 'close current window',
        \'o': 'keep only current window',
        \'s': 'split horizontally',
        \'v': 'split vertically',
        \'=': 'split equally',
        \'J': 'decrease height by 10',
        \'K': 'increase height by 10',
        \'H': 'decrease width by 10',
        \'L': 'increase width by 10',
        \}

let g:which_key_map['g'] = {
        \'name': '+git',
        \}

let g:which_key_map['h'] = {
        \'name': '+hunk',
        \}

