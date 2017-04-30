" The following plugins are expected to be installed:
" * pathogen          -- autoload other plugins
" * ctrlp.vim         -- fuzzy file search
" * nertree           -- nicer file browser with sidebar support
" * vim-mundo         -- visualize undo tree
" * vim-airline       -- better status bar
" * vim-unimpaired    -- bracket mappings
" * vim-gitgutter     -- display git diffs alongside line numbers
" * vim-renamer       -- file renaming utility
" * vim-pandoc        -- `pandoc` integration
" * vim-pandoc-syntax -- `pandoc` syntax module
" * goyo.vim          -- undistracted writing mode
" * vim-matlab-behave -- add basic matlab support
" * vim-latex-suite   -- latex integration, main usecase is concealment of math expressions
" * vim-autoformat    -- autoformatting integration

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

map <leader>s  :let @/=""<CR>
map <leader>fc :foldclose<CR>
map <leader>fo :foldopen<CR>
map <leader>t  :Tab/\|<CR>
map <leader>c  zz

nmap <backspace> :e#<CR>
nmap f           za
nmap F           zA

autocmd InsertEnter *      :setlocal nohlsearch
autocmd InsertLeave *      :setlocal hlsearch


" redraw wiki instance when managed via e.g. _i3wm scratch buffer_
autocmd FocusGained *.wiki :redraw!
autocmd BufRead,BufNewFile *.wiki set filetype=pandoc

autocmd FileType scheme  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType lisp    setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType racket  setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType pandoc  setlocal nonumber autoread
autocmd FileType pandoc  let      g:airline#extensions#whitespace#checks=['indent', 'trailing', 'long']
autocmd FileType tex     set      conceallevel=2

vnoremap cc "+y
nnoremap cc "+p

nnoremap <C-left> gT
nnoremap <C-right> gt
nnoremap <space> @q
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
nnoremap <F8>  :TagbarToggle<CR> zz
nnoremap <F12> :Goyo<CR>

" ctrlp file opener
nnoremap <c-t> :CtrlPBufTag<CR>
nnoremap <a-t> :CtrlPTag<CR>

let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$',
\ 'file': '\.o$\|\.d$'
\ }

" tagbar
let g:tagbar_autofocus = 1
let g:tagbar_compact   = 1

" pandoc
let g:pandoc#modules#disabled = ["folding","spell","chdir"]
let g:pandoc#syntax#conceal#blacklist = ["image","atx"]
let g:pandoc#syntax#codeblocks#embeds#langs = ["c","cpp","sh","xslt","xml","python","php","diff","gdb","lisp","scheme","asm"]

" latex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Imap_UsePlaceHolders = 0
let g:Tex_PromptedEnvironments = ''

" project specific formatters
let g:formatdef_openlb_c = '"astyle -s2 -A4 --mode=c -n -c -j -H --options=none"'
let g:formatters_c       = ['openlb_c']
let g:formatters_cpp     = ['openlb_c']
