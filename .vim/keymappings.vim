" keymappings
let mapleader="\<space>"
" use jj to replace esc
inoremap jj <esc>
" which-key
nnoremap <silent><leader> :WhichKey '<space>'<cr>
" nerdtree
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>nf :NERDTreeFind<cr>
nnoremap <leader>nc :NERDTreeCWD<cr>
" ctrlp
nnoremap <leader>p :CtrlP<cr>
" quit
noremap <leader>qq :q<cr>
noremap <leader>qQ :q!<cr>
noremap <leader>qs :wq<cr>
noremap <leader>qS :wqa<cr>
" files
noremap <leader>fs :w<cr>
noremap <leader>fS :wa<cr>
noremap <leader>ff :e<space>
" buffers
noremap <leader>bb :buffers<cr>
noremap <leader>bd :bdelete<cr>
noremap <leader>bn :bnext<cr>
noremap <leader>bp :bprevious<cr>
noremap <leader>bf :bfirst<cr>
noremap <leader>bl :blast<cr>
noremap <leader>bh :Startify<cr>
noremap <leader>b1 :b1<cr>
noremap <leader>b2 :b2<cr>
noremap <leader>b3 :b3<cr>
noremap <leader>b4 :b4<cr>
noremap <leader>b5 :b5<cr>
noremap <leader>b6 :b6<cr>
noremap <leader>b7 :b7<cr>
noremap <leader>b8 :b8<cr>
noremap <leader>b9 :b9<cr>
" tabs
noremap <leader>tt :tabs<cr>
noremap <leader>te :tabe<cr>
noremap <leader>td :tabclose<cr>
noremap <leader>tn :tabnext<cr>
noremap <leader>tp :tabprevious<cr>
noremap <leader>tf :tabfirst<cr>
noremap <leader>tl :tablast<cr>
" windows
noremap <leader>ww <c-w>w
noremap <leader>wh <c-w>h
noremap <leader>wl <c-w>l
noremap <leader>wj <c-w>j
noremap <leader>wk <c-w>k
noremap <leader>wd <c-w>c
noremap <leader>ws <c-w>s
noremap <leader>wv <c-w>v
noremap <leader>w= <c-w>=
noremap <leader>wK <c-w>10+
noremap <leader>wJ <c-w>10-
noremap <leader>wH <c-w>10<
noremap <leader>wL <c-w>10>
" git
nnoremap <Leader>gg :Git<cr>
nnoremap <Leader>gd :Gdiffsplit<cr>
nnoremap <Leader>gc :Git commit<cr>
nnoremap <Leader>gb :Git blame<cr>
nnoremap <Leader>gl :Gclog<cr>
nnoremap <Leader>gp :Git push<cr>
nnoremap <Leader>gr :Gread<cr>
nnoremap <Leader>gw :Gwrite<cr>
nnoremap <Leader>ge :Gedit<cr>
nnoremap <Leader>ga :Git add .<cr>
nnoremap <Leader>gi :Git add -p %<cr>

