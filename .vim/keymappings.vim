" keymappings
let mapleader="\<space>"

" use jk to replace esc
inoremap jk <esc>

" which-key
nnoremap <silent><leader> :WhichKey '<space>'<cr>

" sneak
nnoremap f <Plug>Sneak_f
nnoremap F <Plug>Sneak_F
nnoremap t <Plug>Sneak_t
nnoremap T <Plug>Sneak_T

" quit
nnoremap <leader>qq :q<cr>
nnoremap <leader>qQ :q!<cr>
nnoremap <leader>qs :wq<cr>
nnoremap <leader>qS :wqa<cr>

" files
nnoremap <leader>fs :w<cr>
nnoremap <leader>fS :wa<cr>
nnoremap <leader>fe :e<space>
nnoremap <leader>ff :Files<cr>
nnoremap <leader>ft :CocCommand explorer<cr>

" buffers
nnoremap <leader>bb :Buffers<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bf :bfirst<cr>
nnoremap <leader>bl :blast<cr>
nnoremap <leader>bh :Startify<cr>
nnoremap <leader>b1 :b1<cr>
nnoremap <leader>b2 :b2<cr>
nnoremap <leader>b3 :b3<cr>
nnoremap <leader>b4 :b4<cr>
nnoremap <leader>b5 :b5<cr>
nnoremap <leader>b6 :b6<cr>
nnoremap <leader>b7 :b7<cr>
nnoremap <leader>b8 :b8<cr>
nnoremap <leader>b9 :b9<cr>

" tabs
nnoremap <leader>tt :tabs<cr>
nnoremap <leader>te :tabe<cr>
nnoremap <leader>td :tabclose<cr>
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>
nnoremap <leader>tf :tabfirst<cr>
nnoremap <leader>tl :tablast<cr>

" windows
nnoremap <leader>ww <c-w>w
nnoremap <leader>wh <c-w>h
nnoremap <leader>wl <c-w>l
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wn <c-w>n
nnoremap <leader>wc <c-w>c
nnoremap <leader>wo <c-w>o
nnoremap <leader>ws <c-w>s
nnoremap <leader>wv <c-w>v
nnoremap <leader>w= <c-w>=
nnoremap <leader>wK <c-w>10+
nnoremap <leader>wJ <c-w>10-
nnoremap <leader>wH <c-w>10<
nnoremap <leader>wL <c-w>10>

" git
nnoremap <leader>gg :Git<cr>
nnoremap <leader>gd :Gdiffsplit<cr>
nnoremap <leader>gc :Git commit<cr>
nnoremap <leader>gb :Git blame<cr>
nnoremap <leader>gl :Git log<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>ga :Git add .<cr>
nnoremap <leader>gi :Git add -p %<cr>

