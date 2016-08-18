inoremap jj <Esc>
vnoremap <Space> <Esc>
nnoremap <Space> i
nnoremap ; :

"Disable arrow keys
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>

"Regular navigation (WASD mirror, t)
nnoremap j h
nnoremap k j
nnoremap i k

vnoremap j h
vnoremap k j
vnoremap i k

"Breakout navigation
inoremap <c-l> <c-o>l
inoremap <c-k> <c-o>j
inoremap <c-i> <c-o>k
inoremap <c-j> <c-o>h
  
nnoremap <C-l> l
nnoremap <C-k> j
nnoremap <C-i> k
nnoremap <C-j> h

"For supertab support, conflict with c-i (navigation), control-space to use supertab
exe 'set t_kB=' . nr2char(27) . '[Z'
imap <NUL> <S-Tab>
