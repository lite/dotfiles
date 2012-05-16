""""
" Settings customize based pathogen.
"  this settings refer to http://d.hatena.ne.jp/vimtaku/20110219
"
" Basic Settings
" .vim/bundle/vimrc/plugin/base.vim
"
" Heighlight Settings
" .vim/bundle/vimrc/plugin/syntax.vim
"
" Key mappign Settings
" .vim/bundle/vimrc/plugin/mapping.vim
"
" Plugin Settings on vimrc file
" .vim/bundle/vimrc/plugin/plugins.vim
"
" vim-utility Functions and Settings
" .vim/bundle/vimrc/plugin/util.vim
"
" vim Filetype Settings Dir
" .vim/bundle/vimrc/ftplugin
"""""

" Load neobundle
filetype plugin indent off
if has('vim_starting')
    set runtimepath+=~/.vim/neobundle.vim
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

" Load Self Plugin
NeoBundle 'vimrc'

" Load Plugins on github
NeoBundle 'tpope/vim-surround'
NeoBundle 'thinca/vim-ref' 
NeoBundle 'thinca/vim-openbuf' 
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-ref' 
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'ervandew/supertab'
"NeoBundle 'sjl/gundo.vim'
NeoBundle 'Lokaltog/vim-easymotion'
"NeoBundle 'kien/tabman.vim'
NeoBundle 'kien/ctrlp.vim'
" NeoBundle 'Shougo/neocomplcache-snippets-complete'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'mattn/benchvimrc-vim'
NeoBundle 't9md/vim-textmanip'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/snipmate-snippets'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-scripts/ZoomWin'

" Load Plugins on vim.org
NeoBundle 'sudo.vim'

" Language
NeoBundle 'tpope/vim-rails'

filetype plugin indent on

