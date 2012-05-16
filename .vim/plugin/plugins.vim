"" unite.vim
let g:unite_enable_start_insert = 1
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>

au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite nnoremap <silent> <buffer> <Esc><Esc> q
au FileType unite inoremap <silent> <buffer> <Esc><Esc> <Esc>q


"" vimshell
nnoremap <silent> ,is :VimShell<CR>
nnoremap <silent> ,ig :VimShellInteractive gosh<CR>
vnoremap <silent> ,ss :VimShellSendString<CR>
nnoremap <silent> ,ss <S-v>:VimShellSendString<CR>

"" Tagbar
nmap <F8> :TagbarToggle<CR>

"" neocomplcache
let g:neocomplcache_disableautocomplete          = 1
let g:neocomplcache_min_keyword_length           = 4
let g:neocomplcache_min_syntax_length            = 4
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_enable_ignore_case           = 1
let g:neocomplcache_enable_smart_case            = 1

"" SuperTab
let g:SuperTabDefaultCompletionType = "<c-x><c-n>"

"" snipmate
let g:snippets_dir='~/.vim/bundle/snipmate-snippets'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Popup menu highlight group
hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE

"" NERDTree
let NERDTreeHijackNetrw   = 0
let NERDTreeMapOpenVSplit = 'v'
let NERDTreeMapOpenSplit  = 's'
nnoremap <Leader>tt :NERDTreeToggle<CR>

"" TagList
if has("unix")
  let Tlist_Ctags_Cmd = '/usr/bin/ctags'
else
  let Tlist_Ctags_Cmd = '"'.$VIMFILES.'/ctags.exe"'
endif
let Tlist_Show_One_File    = 1
let Tlist_Exit_OnlyWindow  = 1
let Tlist_Use_Right_Window = 1

let Tlist_Auto_Highlight_Tag         = 1
let Tlist_Auto_Open                  = 1
let Tlist_Auto_Update                = 1
let Tlist_Close_On_Select            = 0
let Tlist_Compact_Format             = 0
let Tlist_Display_Prototype          = 0
let Tlist_Display_Tag_Scope          = 1
let Tlist_Enable_Fold_Column         = 0
let Tlist_File_Fold_Auto_Close       = 0
let Tlist_GainFocus_On_ToggleOpen    = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth               = 0
let Tlist_Max_Submenu_Items          = 1
let Tlist_Max_Tag_Length             = 30
let Tlist_Process_File_Always        = 0
let Tlist_Show_Menu                  = 0
let Tlist_Sort_Type                  = "order"
let Tlist_Use_Horiz_Window           = 0
let Tlist_WinWidth                   = 31
nnoremap <Leader>tl :TlistToggle<CR> 

"" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

