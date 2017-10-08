set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'w0rp/ale'
Plugin 'valloric/youcompleteme'
Plugin 'ntpeters/vim-better-whitespace'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable 
set background=dark
colorscheme solarized

set t_Co=256
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set autoindent
set number
set relativenumber
set mouse=a
set backspace=indent,eol,start

" Open NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if NERDTree is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
