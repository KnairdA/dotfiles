call pathogen#infect()

syntax enable
filetype plugin indent on
set encoding=utf-8
set showcmd
set nocompatible
set number
set lazyredraw
set ttyfast
set mouse=a
set background=dark

colorscheme akr

set directory=~/.vim/swap//,.

set wrap
set tabstop=4 shiftwidth=4
set backspace=indent,eol,start
set listchars=tab:\•\ 
set list

set hlsearch
set incsearch
set ignorecase
set smartcase

map <leader>s :let @/=""<CR>
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

vnoremap cc "+y
nnoremap cc "+p
nnoremap <F5> :GundoToggle<CR>
nnoremap <F3> :TlistToggle<CR>

nnoremap <C-left> gT
nnoremap <C-right> gt

nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

nmap <Up> [e
nmap <Down> ]e
vmap <Up> [egv
vmap <Down> ]egv

nnoremap <A-left> <C-W>h
nnoremap <A-right> <C-W>l
nnoremap <A-up> <C-W>k
nnoremap <A-down> <C-W>j

set laststatus=2
let g:airline_theme='akr'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tabline#formatter='unique_tail_improved'
let g:airline#extensions#tabline#buffer_idx_mode=0
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline#extensions#tabline#right_alt_sep=''
let g:airline#extensions#tabline#show_close_button=0

let g:vimwiki_list = [{'path': '~/note/'}]

autocmd FileType scheme  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType vimwiki setlocal noswapfile
