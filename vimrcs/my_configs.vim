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

"" (javascript-libraries-syntax.vim)
let g:used_javascript_libs = 'angularjs,requirejs,jquery'

"" (syntastic jslint config)
let g:syntastic_javascript_jshint_args="--tab-width=2"

let g:easytags_async=1

"" ctrl-p ignore path
set wildignore+=*/tmp/*,*/platforms/*,*/plugins/*,*/node_modules/*

"" vim-rspec configs
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

set shell=/bin/sh

"" Vim mustache handlebars plugin
let g:mustache_abbreviations=1

scriptencoding utf-8
set encoding=utf-8

"" https://github.com/nviennot/irb-config
"" https://github.com/benmills/vimux
" command -nargs=? -complete=shellcmd W  :w | :call ScreenSend("load '".@%."';")
map <Leader>c :VimuxRunCommand("bundle exec rails c")<CR>
map <Leader>ct :VimuxRunCommand("bundle exec rails c test")<CR>
map <Leader>l :VimuxRunCommand("load '". @% ."';")<CR>
map <Leader>t :VimuxRunCommand("rspec " . @%)<CR>
map <Leader>tl :VimuxRunCommand("rspec ". @% .':' . line('.'))<CR>
map <Leader>ta :VimuxRunCommand("rspec")<CR>
" map <Leader>e :w<CR> :call ScreenSend("cucumber --format=pretty ".@% . ':' . line('.'))<CR>
map <Leader>b :VimuxRunCommand("break ". @% . ':' . line('.'))<CR>

"" Change file type from .scss to .sass
au BufRead,BufNewFile *.sass set filetype=sass

"" undotree config (don't populate working directory with undo history)
if has("persistent_undo")
  set undodir='~/.undodir/'
  set undofile
endif

"" Toggle undo tree with Ctrl-U
map <silent> <C-u> :UndotreeToggle<CR>
