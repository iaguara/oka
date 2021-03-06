" load plugins
try
  source ~/.oka/vim/plugins.vim
catch
  echom v:exception
  echom 'Plugins not loaded!'
endtry

"""""""""""""""""""
" Let/Set
"""""""""""""""""""
" leader
let g:mapleader = ','
let g:maplocalleader = '\'

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

" Keyboard
set ttyfast
set timeout timeoutlen=1000 ttimeoutlen=50

" Dont redraw when macro is run
set lazyredraw

" Status 2 lines
set laststatus=2
set cmdheight=2

" No bells
set novisualbell
set noerrorbells

" show command in the last line
set showcmd

" Disable mode lines
set nomodeline

" No cursor line
set nocursorline

"""""""""""""""""""
" Maps
"""""""""""""""""""
" Fast saving
noremap <leader>w :w!<cr>

" Treat long lines as break lines
noremap j gj
noremap k gk

" Disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

" Useful mappings for managing  buffer
noremap <leader>bd :Bdelete<cr>
noremap <leader>ba :bufdo Bdelete!<cr>
noremap <leader>bw :bufdo w<cr>
noremap <leader>bn :bn<cr>
noremap <leader>bp :bp<cr>

" Go to next/previous result
noremap <leader>n :cn<cr>
noremap <leader>p :cp<cr>

"""""""""""""""""""
" Files conf
"""""""""""""""""""
autocmd Filetype gitcommit setlocal spell textwidth=72

"""""""""""""""""""
" Theme
"""""""""""""""""""
try
  colorscheme duoduo
catch
  echom v:exception
  echom 'Colorscheme not loaded!'
endtry

highlight ColorColumn ctermbg=gray ctermfg=black
highlight SpecialKey ctermfg=8
