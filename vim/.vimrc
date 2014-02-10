call pathogen#infect()

syntax enable
filetype plugin indent on
set encoding=utf-8
set showcmd
set nocompatible
set number
set background=dark
set lazyredraw
set ttyfast

set directory=~/.vim/swap,.

set wrap
set tabstop=4 shiftwidth=4
set backspace=indent,eol,start
set listchars=tab:\▶\ 
set list

set hlsearch
set incsearch
set ignorecase
set smartcase

colorscheme jellybeans

vnoremap cc "+y
nnoremap cc "+p
nnoremap <F5> :GundoToggle<CR>
nnoremap <F3> :TlistToggle<CR>

nnoremap <C-left> gT
nnoremap <C-right> gt

nnoremap <A-left> <C-W>h
nnoremap <A-right> <C-W>l
nnoremap <A-up> <C-W>k
nnoremap <A-down> <C-W>j

nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv
