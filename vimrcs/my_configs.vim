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

