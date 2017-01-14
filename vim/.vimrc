" The following plugins are expected to be installed:
" * pathogen          -- autoload other plugins
" * ctrlp.vim         -- fuzzy file search
" * nertree           -- nicer file browser with sidebar support
" * vim-mundo         -- visualize undo tree
" * vim-airline       -- better status bar
" * vim-unimpaired    -- bracket mappings
" * vim-gitgutter     -- display git diffs alongside line numbers
" * vim-renamer       -- file renaming utility
" * vim-vimwiki       -- makes it easier to manage e.g. notes
" * goyo.vim          -- undistracted writing mode
" * vim-matlab-behave -- add basic matlab support

call pathogen#infect()

syntax enable
filetype plugin indent on
set encoding=utf-8
set showcmd
set nocompatible
set nocursorline
set number
set lazyredraw
set ttyfast
set mouse=a
set t_Co=256
set background=dark
set shell=/bin/sh

colorscheme jellybeans

set directory=~/.vim/swap//,.

set wrap
set tabstop=4 shiftwidth=4
set backspace=indent,eol,start
set listchars=tab:\ \ 
set list
set linebreak

set hlsearch
set incsearch
set ignorecase
set smartcase

let mapleader=","

map <leader>s :let @/=""<CR>
map <leader>fc :foldclose<CR>
map <leader>fo :foldopen<CR>

nmap <backspace> :e#<CR>

autocmd InsertEnter *      :setlocal nohlsearch
autocmd InsertLeave *      :setlocal hlsearch

" redraw wiki instance when managed via e.g. _i3wm scratch buffer_
autocmd FocusGained *.wiki :redraw!

autocmd FileType scheme  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType lisp    setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType racket  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType vimwiki setlocal noswapfile nonumber foldcolumn=1 autoread
autocmd FileType vimwiki let      g:airline#extensions#whitespace#checks=['indent', 'trailing', 'long']

vnoremap cc "+y
nnoremap cc "+p

nnoremap <C-left> gT
nnoremap <C-right> gt
nnoremap <space> zz
nnoremap J }
nnoremap K {

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
let g:airline#extensions#tabline#enabled              = 1
let g:airline#extensions#tabline#show_buffers         = 0
let g:airline#extensions#tabline#show_tab_type        = 0
let g:airline#extensions#tabline#formatter            = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_idx_mode      = 0
let g:airline#extensions#tabline#left_sep             = ''
let g:airline#extensions#tabline#left_alt_sep         = ''
let g:airline#extensions#tabline#right_sep            = ''
let g:airline#extensions#tabline#right_alt_sep        = ''
let g:airline#extensions#tabline#show_close_button    = 0
let g:airline#extensions#tabline#show_splits          = 0
let g:airline#extensions#tabline#show_tab_nr          = 0
let g:airline#extensions#whitespace#mixed_indent_algo = 2

let g:vimwiki_list = [{
	\ 'path':             '~/note/',
	\ 'path_html':        '~/share/note/',
	\ 'template_path':    '~/share/note/assets/',
	\ 'template_default': 'default',
	\ 'template_ext':     '.tpl' }]

let g:gitgutter_enabled         = 0
let g:gitgutter_highlight_lines = 1
let g:goyo_width                = 90
let g:goyo_margin_top           = 1
let g:goyo_margin_bottom        = 0
let g:matlab_behave_paste_cmd   = "alt+v"

nnoremap <F4>  :NERDTreeToggle<CR>
nnoremap <F5>  :MundoToggle<CR>
nnoremap <F6>  :GitGutterToggle<CR>
nnoremap <F7>  :set cursorline!<CR>
nnoremap <F12> :Goyo<CR>

map  <leader>t :VimwikiToggleListItem<CR>
nmap <leader>wtl <Plug>VimwikiTableMoveColumnLeft
nmap <leader>wtr <Plug>VimwikiTableMoveColumnRight
