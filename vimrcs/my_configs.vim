"" Use ctrl-[hjkl] to select the active split!
"" Sync as well with tmux
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

set number
set foldmethod :indent
set splitright
set splitbelow

""" (NERDTree)
"" Easier to toggle NERDTree than ,nn
map <silent> <C-i> :NERDTreeToggle<CR>
"" Reveal current file in nerdtree
map <silent> <S-f> :NERDTreeFind<CR>
""" Always show hidden files (.rspec, .gitignore etc)
let NERDTreeShowHidden=1

"" (vim-fugitive) open quickfix window after any grep invocation:
autocmd QuickFixCmdPost *grep* cwindow

"" Unfold all folds when opening a file
au BufWinEnter * normal zR

"" (yankstack)
"" Ctrl-p/o to cycle through yanks
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-o> <Plug>yankstack_substitute_newer_paste

"" Move lines up/down using Alt+j/k
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

"""""""""""""""""
" Fix Meta-Keys "
"""""""""""""""""
" more generic solution
" let c='a'
" while c <= 'z'
"   exec "set <M-".toupper(c).">=\e".c
"   exec "imap \e".c." <M-".toupper(c).">"
"   let c = nr2char(1+char2nr(c))
" endw

" fix meta-keys which generate <Esc>a .. <Esc>z
" set <m-p> = ^[p   " rotate yanks forward
" set <m-P> = ^[P   " rotate yanks backward
" note that, the ^[ is an Esc char that comes before the 'p'
" In most default configurations, ^[p may be typed by pressing first <C-v>, then <M-p>

