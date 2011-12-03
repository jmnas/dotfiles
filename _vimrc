" ==========================================================
" Shortcuts
" ==========================================================
set nocompatible

let mapleader = ","

" vim file editing, different for windows because it is _vimrc etc.
if has('win32') || has('win64')
    map <leader>v :e ~/dotfiles/_vimrc<CR>
    map <silent> <leader>V :source ~/_vimrc<CR>:filet detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
else
    map <leader>v :e ~/.vimrc<CR>
    map <silent> <leader>V :source ~/.vimrc<CR>:filet detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
endif

" easy write
map <leader>w :w<CR>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>"

" navigation
" nnoremap <c-j> 5j
" nnoremap <c-k> 5k
nnoremap <c-e> 5<c-e>
nnoremap <c-y> 5<c-y>
nnoremap <space> 5<c-e>
nnoremap <bs> 5<c-y>

" window navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" make . more useful
nmap . .`[

" buffer switching
nnoremap <Leader><Leader> :b#<CR>
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>
nnoremap <Leader>0 :b10<CR>

" visual mode
" / searches for selection
vmap / y/<C-R>"<CR>
" let < and > indent without losing the selection
vmap > >gv
vmap < <gv

" ==========================================================
" Load plugins with Pathogen
" ==========================================================
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on

" ==========================================================
" Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set numberwidth=1             " using only 1 column (and 1 space) while possible
set background=dark           " We are using dark background in vim
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.
set hidden                    " Change buffers without writing
set history=1000              " More history
set vb t_vb=                  " No audio or verbal bell
set noesckeys                 " No escape keys to reduce delay in screen

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc

""" Insert completion
" don't select first item, follow typing in autocomplete
set completeopt=menuone,longest,preview
set pumheight=6             " Keep a small completion window

""" Moving Around/Editing
" set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set matchtime=1             " (for only .2 seconds).
set nowrap                  " don't wrap text
set linebreak               " don't wrap textin the middle of a word
set matchpairs+=<:>         " show matching <> (html mainly) as well
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default

" spacing
set autoindent              " always set autoindenting on
" set smartindent             " smart indent
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" Stuff that may vary
set t_Co=256
colorscheme peaksea

let g:miniBufExplorerMoreThanOne=0
