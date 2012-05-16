" Change the mapleader from \ to ,
let mapleader=","

nnoremap ,e :execute '!' &ft ' %'<CR>

" Maintain selection after indent
vmap > >gv
vmap < <gv

map <C-j> <C-W>j 
map <C-k> <C-W>k 
map <C-h> <C-W>h 
map <C-l> <C-W>l 

cmap <c-a> <home>
cmap <c-e> <end>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-f> <right>
cnoremap <c-n> <down>
cnoremap <c-p> <up>

" sudo to write
cmap w!! w !sudo tee % >/dev/null

" Jump to matching pairs with Tab
nnoremap <Tab> %
vnoremap <Tab> %

" Strip all trailing whitespace from a file, using ,w
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>


