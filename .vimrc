" load plugins
try
  source ~/.oka/vim/plugins.vim
catch
endtry

"""""""""""""""""""
" Let/Set
" leader
let g:mapleader = ','

" 256 colors
set t_Co=256

" UTF-8
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8

" No Backup
set nobackup
set nowritebackup
set noswapfile

" Undo
set undolevels=1000

" Invisible chars
set list
set listchars=tab:\|\ ,trail:.,precedes:<,extends:>,eol:$

" Buffer
set hidden " hidden when non saved

" Tabs
set shiftwidth=2
set tabstop=2
set expandtab " spaces instead tabs
set smarttab

" Scroll
set scrolloff=5 " fixed lines on vert scroll

" Search
set hlsearch " highlight

" Unix default
set fileformats=unix,dos,mac

" Paste mode
set pastetoggle=<F2>

" Highlight column
let &colorcolumn='81'

"""""""""""""""""""
" Maps
" Fast saving
nmap <leader>w :w!<cr>

" Treat long lines as break lines
map j gj
map k gk

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing  buffer
map <leader>bd :Bdelete<cr>
map <leader>ba :bufdo Bdelete!<cr>
map <leader>bw :bufdo w<cr>
map <leader>bn :bn<cr>
map <leader>bp :bp<cr>

" Go to next/previous result
map <leader>n :cn<cr>
map <leader>p :cp<cr>

"""""""""""""""""""
" Files conf
autocmd Filetype gitcommit setlocal spell textwidth=72

"""""""""""""""""""
" Theme
colo jellybeans
hi ColorColumn ctermbg=gray ctermfg=black
hi NonText ctermfg=8
hi SpecialKey ctermfg=8
