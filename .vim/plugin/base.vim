
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

"""""
" Initialize Settings
"""""
set nocompatible
set history=999
set encoding=utf-8
set nobackup

"""""
" Status line Settings
"""""
set laststatus=2
set ruler
set title
set showcmd
set showmode

set statusline=%<[%n]%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}\%=%l,%c%V%8P

set wildmode=list:longest

"""""
" Behavior Settings
"""""
set backspace=indent,eol,start
set autoindent
set incsearch

set ignorecase
set smartcase
set wrapscan

set hidden

set autoread

if has('autochdir')
  set autochdir
endif
set tags+=tags;


autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
"""""
" View window Settings
"""""
set list
set listchars=tab:\ \ ,trail:\ ,extends:>
set number
set showmatch
set hlsearch
set wrap
set novisualbell

"""""
"Tabs  Settings
"""""
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=0

set helpfile=$VIMRUNTIME/doc/help.txt
if has("autocmd")

  autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
endif

nnoremap <ESC><ESC> :nohlsearch<CR><ESC>

