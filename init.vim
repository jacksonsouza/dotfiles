call plug#begin('~/.config/nvim/plugged')

" .Make sure you use single quotes
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/seoul256.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'moll/vim-node'
Plug 'rust-lang/rust.vim'
Plug 'Townk/vim-autoclose'
Plug 'ahayman/vim-nodejs-complete'
"Plug 'vheon/vim-cursormode'
Plug 'bling/vim-airline'
Plug 'robertmeta/nofrils'
Plug 'morhetz/gruvbox'
Plug 'elzr/vim-json'
Plug 'nono/vim-handlebars'

" Group dependencies, vim-snippets depends on ultisnips

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'ntpeters/vim-better-whitespace'
" TODO: ctags

call plug#end()


let g:pymode_options_max_line_length = 123
let g:pymode_options_colorcolumn = 0
let g:pymode_folding = 0
let g:pymode_lint_checkers = []
let g:pymode_lint_ignore = "E402,W391"

" let cursormode_color_map = {
"       \   "n":      "#FFFFFF",
"       \   "i":      "#0000FF",
"       \   "v":      "#00FF00",
"       \   "V":      "#FF0000",
"       \   "\<C-V>": "#FFFF00",
"       \ }

" Ignore for ctrl-p
set wildignore+=*/node_modules/**
set wildignore+=*/dev/**

autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.c :%s/\s\+$//e
autocmd BufWritePre *.sh :%s/\s\+$//e

" synchronize vim's cwd with the cwd of the current buffer
set autochdir

" ignore case in search patterns
set ignorecase
" unset &ignorecase if the search pattern contains upper case characters
set smartcase
" use proper syntax highlighting for shell scripts
let g:is_posix = 1
" enable true color support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set virtualedit=onemore
set cursorline
set timeout timeoutlen=300 ttimeoutlen=300

" Key Mappings "
:imap jj <Esc>


" Console log from insert mode; Puts focus inside parentheses


set t_Co=256

syntax on
colorscheme gruvbox
set background=dark    " Setting dark mode

"hi Normal ctermbg=none
" colorscheme xian
" colorscheme badwolf
" colorscheme peachpuff
" colorscheme marklar
" colorscheme darkspectrum
" colorscheme default
" colorscheme random
" colo nofrils-dark


" Control P "
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_open_multiple_files = '<c-t>'

"set listchars=nbsp:¬

set modeline
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
set smartindent


" Different directory for swap files
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

" Line numbers
set nu

set nowrap

" Always show statusline
set laststatus=2
" Backspace Legit

set backspace=2

command WQ wq
command Wq wq
command W w
command Q q
command Edit edit

set title

" To piss others off
 nnoremap <left> <nop>
 nnoremap <right> <nop>
 nnoremap <up> <nop>
 nnoremap <down> <nop>

 inoremap <left> <nop>
 inoremap <right> <nop>
 inoremap <up> <nop>
 inoremap <down> <nop>

inoremap <C-l> <Esc>l
inoremap <C-j> <Esc>j
inoremap <C-k> <Esc>k
inoremap <C-h> <Esc>h

nnoremap <C-l> l
nnoremap <C-j> j
nnoremap <C-k> k
nnoremap <C-h> h



set fileformat=unix

nnoremap H 00
nnoremap L $

noremap <c-u> 25k
noremap <c-d> 25j

inoremap <a-l> <Esc>

set undolevels=20
set noerrorbells
set noswapfile
set nobackup
nnoremap ; :

set mouse-=a
set wrap
set linebreak
set nolist  " list disables linebreak
set rnu

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
