scriptencoding utf-8

call plug#begin()

" Sensible
Plug 'tpope/vim-sensible'

" RSI
"Plug 'tpope/vim-rsi'

" Vim colors
Plug 'nanotech/jellybeans.vim'

" Devicons
Plug 'ryanoasis/vim-devicons'

" Vim diff
Plug 'chrisbra/vim-diff-enhanced'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Tmux line
"Plug 'edkolev/tmuxline.vim'
"let g:tmuxline_powerline_separators = 0

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules)$'

" nerdtree
Plug 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
"let g:NERDTreeIgnore=['^\.git$']

" nerdcommenter
Plug 'scrooloose/nerdcommenter'

" numbers.vim
Plug 'myusuf3/numbers.vim'

" vim-markdown
Plug 'tpope/vim-markdown'

" Vim Less CSS
Plug 'groenewege/vim-less'

" Vim Stylus CSS
Plug 'wavded/vim-stylus'

" Vim Javascript syntax highlight
Plug 'pangloss/vim-javascript'

" Vim GraphQL
Plug 'jparise/vim-graphql'

" Vim Flow JS
"Plug 'flowtype/vim-flow'
"let g:flow#enable = 0

" Vim JSX syntax highlight
Plug 'mxw/vim-jsx'

" Vim JSON
Plug 'elzr/vim-json'

" Vim Editor Config
Plug 'editorconfig/editorconfig-vim'

" Multiple Cursor mode
Plug 'terryma/vim-multiple-cursors'
" Prevent conflict with neocomplete
" Called once right before you start selecting multiple cursors
"function! Multiple_cursors_before()
"  if exists(':NeoCompleteLock')==2
"    exe 'NeoCompleteLock'
"  endif
"endfunction
" Called once only when the multiple selection is canceled (default <Esc>)
"function! Multiple_cursors_after()
"  if exists(':NeoCompleteUnlock')==2
"    exe 'NeoCompleteUnlock'
"  endif
"endfunction

" Tmux Conf
Plug 'tmux-plugins/vim-tmux'

" Vim todo
Plug 'dhruvasagar/vim-dotoo'

" Easy Motion
Plug 'easymotion/vim-easymotion'

" Surround
Plug 'tpope/vim-surround'

" Vim buffer bye
Plug 'moll/vim-bbye'

" Vim CSS Color
Plug 'ap/vim-css-color'

" Kotlin
Plug 'udalov/kotlin-vim'

" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Neoformat
Plug 'sbdchd/neoformat'

" Deoplete (Asynchronous complete)
"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
"let g:deoplete#enable_at_startup = 1

" Asynchronous Lint Engine
Plug 'w0rp/ale'
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1

call plug#end() " END Plugins
