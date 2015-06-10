" The following plugins are expected to be installed:
" * pathogen       -- autoload other plugins
" * ctrlp.vim      -- fuzzy file search
" * gundo.vim      -- visualize undo tree
" * vim-airline    -- better status bar
" * vim-unimpaired -- bracket mappings
" * vim-csapprox   -- approximate color scheme for cli
" * vim-gitgutter  -- display git diffs alongside line numbers
" * vim-renamer    -- file renaming utility
" * vim-vimwiki    -- makes it easier to manage e.g. notes
" * goyo.vim       -- undistracted writing mode

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
set background=dark
set shell=/bin/sh

colorscheme akr

set directory=~/.vim/swap//,.

set wrap
set tabstop=4 shiftwidth=4
set backspace=indent,eol,start
set listchars=tab:\•\ 
set list
set linebreak

set hlsearch
set incsearch
set ignorecase
set smartcase

map <leader>s :let @/=""<CR>

autocmd InsertEnter *   :setlocal nohlsearch
autocmd InsertLeave *   :setlocal hlsearch
autocmd FileType scheme  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType vimwiki setlocal noswapfile

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
let g:airline_theme                                = 'akr'
let g:airline#extensions#tabline#enabled           = 1
let g:airline#extensions#tabline#show_buffers      = 0
let g:airline#extensions#tabline#show_tab_type     = 0
let g:airline#extensions#tabline#formatter         = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_idx_mode   = 0
let g:airline#extensions#tabline#left_sep          = ''
let g:airline#extensions#tabline#left_alt_sep      = ''
let g:airline#extensions#tabline#right_sep         = ''
let g:airline#extensions#tabline#right_alt_sep     = ''
let g:airline#extensions#tabline#show_close_button = 0

let g:vimwiki_list              = [{'path': '~/note/'}]
let g:gitgutter_enabled         = 0
let g:gitgutter_highlight_lines = 1
let g:goyo_width                = 90
let g:goyo_margin_top           = 1
let g:goyo_margin_bottom        = 0

nnoremap <F5>  :GundoToggle<CR>
nnoremap <F6>  :GitGutterToggle<CR>
nnoremap <F7>  :set cursorline!<CR>
nnoremap <F12> :Goyo<CR>

map <leader>t :VimwikiToggleListItem<CR>
