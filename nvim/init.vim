call plug#begin('~/.config/nvim/plugged')
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-endwise'
Plug 'scrooloose/nerdcommenter'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

Plug 'moll/vim-node'
Plug 'ahayman/vim-nodejs-complete'

Plug 'elzr/vim-json'
Plug 'nono/vim-handlebars'
call plug#end()

"Key mappings located in /after/plugin to override plugin hijacking
filetype plugin on

filetype on           
filetype indent on   

"Ignore for ctrl-p
set wildignore+=*/node_modules/**
set wildignore+=*/dev/**

"Remove trailing highlighted spaces
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e
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
set timeout timeoutlen=300 ttimeoutlen=300

set t_Co=256

syntax on
colorscheme gruvbox
set background=dark

" Control P "
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_open_multiple_files = '<c-t>'

set modeline
set tabstop=2 softtabstop=2 expandtab shiftwidth=2
set smartindent

set clipboard=unnamed

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
set title
set fileformat=unix
set undolevels=20
set noerrorbells
set noswapfile
set nobackup
set autoindent
set mouse-=a
set wrap
set linebreak
set nolist  " list disables linebreak

let g:NERDCreateDefaultMappings = 0

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
