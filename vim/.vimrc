call plug#begin('~/.vim/plugins')

Plug 'ctrlpvim/ctrlp.vim'              " fuzzy file, ctag search
Plug 'scrooloose/nerdtree'             " nicer file browser with sidebar support
Plug 'simnalamburt/vim-mundo'          " visualize undo tree
Plug 'vim-airline/vim-airline'         " better status bar
Plug 'vim-airline/vim-airline-themes'  " airline themes
Plug 'tpope/vim-unimpaired'            " bracket mappings
Plug 'airblade/vim-gitgutter'          " display git diffs alongside line numbers
Plug 'qpkorr/vim-renamer'              " file renaming utility
Plug 'vim-pandoc/vim-pandoc'           " `pandoc` integration
Plug 'vim-pandoc/vim-pandoc-syntax'    " `pandoc` syntax module
Plug 'junegunn/goyo.vim'               " distraction free writing mode
Plug 'elmanuelito/vim-matlab-behave'   " add basic matlab support
Plug 'vim-latex/vim-latex'             " latex integration, main usecase for me is the concealment of math expressions
Plug 'Chiel92/vim-autoformat'          " autoformatting integration
Plug 'majutsushi/tagbar'               " display ctag tree in sidebar
Plug 'godlygeek/tabular'               " text alignment helper
Plug 'MarcWeber/vim-addon-local-vimrc' " folder specific vim configuration
Plug 'nathanaelkane/vim-indent-guides' " pretty indentations

call plug#end()

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
set sessionoptions-=options

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
map <leader>d  <c-]>

nmap <backspace> :e#<CR>
nmap f           za
nmap F           zA

autocmd InsertEnter *      :setlocal nohlsearch
autocmd InsertLeave *      :setlocal hlsearch

" redraw wiki instance when managed via e.g. _i3wm scratch buffer_
autocmd FocusGained *.wiki :redraw!
autocmd BufRead,BufNewFile *.wiki set filetype=pandoc
autocmd BufReadPre,FileReadPre * :SourceLocalVimrc

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
nnoremap <F8>  :TagbarToggle<CR>
nnoremap <F12> :Goyo<CR>

" indent guides
let g:indent_guides_auto_colors  = 1
let g:indent_guides_space_guides = 0

" ctrlp file opener
nnoremap <c-t> :CtrlPBufTag<CR>
nnoremap <a-t> :CtrlPTag<CR>

let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$',
\ 'file': '\.o$\|\.d$'
\ }

" tagbar
let g:tagbar_autoclose      = 1
let g:tagbar_autopreview    = 1
let g:tagbar_compact        = 1
let g:tagbar_width          = 70

" pandoc
let g:pandoc#modules#disabled = ["folding","spell","chdir"]
let g:pandoc#syntax#conceal#blacklist = ["image","atx"]
let g:pandoc#syntax#codeblocks#embeds#langs = ["c","cpp","sh","xslt","xml","python","php","diff","gdb","lisp","scheme","asm"]

" latex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:Imap_UsePlaceHolders = 0
let g:Tex_PromptedEnvironments = ''
