call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
" Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'mitsuhiko/vim-jinja'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug 'terryma/vim-multiple-cursors'
" Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'Valloric/MatchTagAlways'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'kien/rainbow_parentheses.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang' }

call plug#end()


filetype plugin indent on
syntax on


set autoindent
set undodir=~/tmp//
set backupdir=~/tmp//
set directory=~/tmp//
set clipboard=unnamed
set cursorline
set expandtab
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set number
set shiftwidth=4
set tabstop=4
set smarttab
set t_Co=256
set timeoutlen=300
" set ttimeoutlen=0
set ttymouse=xterm2

inoremap jk <Esc>
inoremap jj <Esc>
inoremap kk <Esc>
inoremap hh <Esc>
" inoremap ll <Esc>


autocmd FileType cpp,css,html,htmljinja,java,javascript,json,vim setlocal shiftwidth=2
autocmd FileType cpp,css,html,htmljinja,java,javascript,json,vim setlocal tabstop=2
autocmd FileType python setlocal colorcolumn=80
autocmd FileType cpp setlocal colorcolumn=81

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd InsertLeave * match ExtraWhitespace /\s\+$/


let g:mapleader=' '


" Tomorrow
colorscheme tomorrow-night-bright

" Airline
" let g:airline_theme="molokai"
let g:airline_theme='tomorrow'
let g:airline_left_sep=''
let g:airline_right_sep=''
" let g:airline_powerline_fonts=1

" " Molokai
" let g:molokai_original=1
" colorscheme molokai

" NERDCommenter
map <Leader>[ <plug>NERDCommenterAlignLeft
map <Leader>] <plug>NERDCommenterToggle
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1

" Syntastic
" let g:syntastic_cpp_compiler='clang++'
" let g:syntastic_cpp_cpplint_exec='cpplint'
" let g:syntastic_cpp_checkers=['gcc','cpplint']
" let g:syntastic_python_checkers=['pep8']
" let g:syntastic_haskell_checkers=['hlint']

" ale
let g:ale_sign_column_always = 1
let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
\   'python': ['flake8'],
\}

" SuperTab
" let g:SuperTabDefaultCompletionType='context'

" delimitMate
let g:delimitMate_expand_cr=2
let g:delimitMate_expand_space=1
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

" MatchTagAlways
let g:mta_filetypes={'html':1,'xhtml':1,'xml':1,'htmljinja':1}

" YouCompleteMe
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['gray',        'RoyalBlue3'],
    \ ]
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
