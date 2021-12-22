" keymappings
let mapleader="\<space>"
" use jj to replace esc
inoremap jj <esc>
" which-key
nnoremap <silent> <leader> :WhichKey '<space>'<CR>
" nerdtree
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeCWD<CR>
" ctrlp
nnoremap <leader>p :CtrlP<CR>
" quit
noremap <leader>qq :q<CR>
noremap <leader>qQ :q!<CR>
noremap <leader>qs :wq<CR>
noremap <leader>qS :wqa<CR>
" files
noremap <leader>fs :w<CR>
noremap <leader>fS :wa<CR>
noremap <leader>ff :e 
" buffers
noremap <leader>bb :buffers<CR>
noremap <leader>bh :Startify<CR>
noremap <leader>bd :bdelete<CR>
noremap <leader>bn :bnext<CR>
noremap <leader>bp :bprevious<CR>
noremap <leader>bf :bfirst<CR>
noremap <leader>bl :blast<CR>
noremap <leader>b1 :b 1<CR>
noremap <leader>b2 :b 2<CR>
noremap <leader>b3 :b 3<CR>
noremap <leader>b4 :b 4<CR>
noremap <leader>b5 :b 5<CR>
noremap <leader>b6 :b 6<CR>
noremap <leader>b7 :b 7<CR>
noremap <leader>b8 :b 8<CR>
noremap <leader>b9 :b 9<CR>
" tabs
noremap <leader>tt :tabs<CR>
noremap <leader>te :tabe<CR>
noremap <leader>td :tabclose<CR>
noremap <leader>tn :tabnext<CR>
noremap <leader>tp :tabprevious<CR>
noremap <leader>t1 :tab 1<CR>
noremap <leader>t2 :tab 2<CR>
noremap <leader>t3 :tab 3<CR>
noremap <leader>t4 :tab 4<CR>
noremap <leader>t5 :tab 5<CR>
noremap <leader>t6 :tab 6<CR>
noremap <leader>t7 :tab 7<CR>
noremap <leader>t8 :tab 8<CR>
noremap <leader>t9 :tab 9<CR>
" windows
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
" git
nnoremap <Leader>gg :Git<CR>
nnoremap <Leader>gd :Gdiffsplit<CR>
nnoremap <Leader>gc :Git commit<CR>
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gl :Gclog<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>ga :Git add .<CR>
nnoremap <Leader>gi :Git add -p %<CR>
