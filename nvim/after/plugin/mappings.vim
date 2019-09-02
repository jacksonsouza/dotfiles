inoremap jk <Esc>
cnoremap jk <Esc>

nnoremap <Space> i

nnoremap ; :
let mapleader = "m"

"Navigation in other modes
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

exe 'set t_kB=' . nr2char(27) . '[Z'
imap <NUL> <S-Tab>
"cntl-tab to use supertab

map <leader>n :NERDTree<cr>
map <leader>f :Files<cr>
map <leader>s :Rg<cr>

"Remove search highlight
nnoremap <leader><Space> :nohlsearch<cr>

"Comment line
map <leader>cc <Plug>NERDCommenterToggle('n', 'Toggle')<cr>
