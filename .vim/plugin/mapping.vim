
"""""
" Key And Mouse Settings
"""""
"if has('mouse')
"  set mouse=a
"endif
set ttymouse=xterm2

nnoremap ,e :execute '!' &ft ' %'<CR>

" noremap ; :
" noremap : ;
"
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
