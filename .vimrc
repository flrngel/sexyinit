execute pathogen#infect()

" color
colo seoul256
let g:seoul256_background=233

" ctrlp setting
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"
syntax on
set nu
" set ts=2
set sw=2
set sts=2
set showmatch
set shiftwidth=2
set si
set cin
set cinoptions+=j1
set backspace=2
set backspace=indent,eol,start
set ignorecase
set smartcase
set expandtab
set hlsearch
highlight MatchParen cterm=bold ctermbg=lightgreen ctermfg=magenta

" Markdown Plugin
let g:vim_markdown_folding_disabled=1

" wildignore for ctrlp
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
set wildignore+=*/dst/*
set wildignore+=*/tmp/*

" set keyword
set iskeyword+=\-
set iskeyword+=\_

" set vim yank unlimit
set viminfo='100,h
filetype plugin indent on

" Remember last cursor position
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

