"----------VUNDLE----------"

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9' " Vim script library

Plugin 'scrooloose/nerdtree' " file explorer
nmap <leader>t :NERDTreeToggle<CR>

Plugin 'tpope/vim-commentary' " comment stuff
Plugin 'airblade/vim-gitgutter' " git

" html
Plugin 'othree/html5.vim' " html5
Plugin 'maksimr/vim-jsbeautify' " html, css, js beautify
Plugin 'mattn/emmet-vim' " fast html
Plugin 'briancollins/vim-jst' " ejs highlight
Plugin 'jwalton512/vim-blade' " laravel blade

" css
Plugin 'hail2u/vim-css3-syntax'

" js
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx' " jsx highlight
let g:jsx_ext_required = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

colorscheme default

" General
syntax on
set cursorline
set enc=utf8
set ruler
set backspace=2
set ic

" Restore cursor
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" hl
set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Must add after color scheme
highlight Comment cterm=italic

" C
set cin

" Tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
retab

set scrolloff=5
set cursorcolumn

set autoindent
set smartindent
set backupcopy=yes

