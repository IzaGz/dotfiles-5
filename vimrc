" See https://github.com/skwp/dotfiles for vundle plugins & conf ideas
" vi: set filetype=vim:

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
" Note: with powerline, you need one of these too: https://github.com/ashwin/vim-powerline/tree/develop/font (works on PuTTY)
Bundle 'jnurmine/Zenburn'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'Shougo/neocomplcache'
Bundle 'bogado/file-line'

Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on

let g:CommandTMatchWindowAtTop=1
let g:fuzzy_ignore = "*.class,*.pyc,*.log,*.o"
let g:Powerline_symbols = 'fancy'
let g:neocomplcache_auto_completion_start_length = 3
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_max_list = 5

let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.class$']
let NERDTreeMinimalUI=1

""" Begin shared with root

filetype plugin indent on

let mapleader=","

set autoindent
set autoread
set backspace=2
set background=dark
set diffopt+=iwhite
set encoding=utf-8
set expandtab
set fileformat=unix
set gdefault
set guioptions-=T       " Turn off useless toolbar
set guioptions-=m       " Turn off useless toolbar
set hlsearch
set ignorecase
set incsearch
set laststatus=2        " Always want statusline
set lazyredraw          " Don't display macro steps
set linebreak
set mouse=a
set nobackup
set nocompatible
set noswapfile
set nowrap
set nowritebackup
set number
set ruler
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set shiftwidth=4
set showcmd
set showmode
set smartindent
set smarttab
set softtabstop=4
set tabstop=4
set viminfo+=%
set wildignore+=*.pyc,*.o,*.class,log/**
set wildmenu
set wildmode=list:longest,full

syntax on

""" End shared with root

silent! colorscheme zenburn

nmap <leader>d :NERDTreeToggle<CR>

if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    " See also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

