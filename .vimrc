set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Upon repository clone, run this command first to install vundle"
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused
"                        bundles
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" My Bundles here:
" original repos on github

" Fugitive: Git management inside VIM
Bundle 'tpope/vim-fugitive'

" Golang: Google go vim repository
Bundle 'jnwhiteh/vim-golang'

" Solarized: Solarized  color scheme
Bundle 'altercation/vim-colors-solarized'
""" SOLARIZED CONFIGURATION
set background=dark "light
let g:solarized_termtrans=1
colorscheme solarized

" Python: advanced syntax highlighting
Bundle 'python.vim'

" NerdCommenter: advanced comments
Bundle 'scrooloose/nerdcommenter'

" CtrlP: fuzzy file search
Bundle 'kien/ctrlp.vim'

" Matchit: extended % matching for HTML, LaTeX, and many other languages 
Bundle 'matchit.zip'

" Erlvim: Erlang plugin for vim
Bundle 'oscarh/vimerl'

filetype plugin indent on
syntax on

"""""""""""""""""""
" CUSTOM PARAMETERS
" from: http://items.sjbach.com/319/configuring-vim-right
"""""""""""""""""""
" Hidden: it allows Vim to manage multiple buffers effectively.
" The current buffer can be put to the background without writing to disk;
" When a background buffer becomes current again, marks and undo-history are remembered.
set hidden

"  GotoKey: Typing 'a will jump to the line in the current file marked with ma. However,
" `a will jump to the line and column marked with ma.
nnoremap ' `
nnoremap ` '

" LeaderMap: The default leader is \, but this isn’t located standardly on all keyboards
" and requires a pinky stretch in any case.
" NOT FOR NOW!
" let mapleader = ","

" History: Keep a longer history
" By default, Vim only remembers the last 20 commandsset history=1000

" Completion: By default, pressing <TAB> in command mode will 
" choose the first possible completion with no indication of how many 
" others there might be. 
" The following configuration lets you see what your other options are:
set wildmenu
" To have the completion behave similarly to a shell, i.e. 
" complete only up to the point of ambiguity (while still showing 
" you what your options are), also add the following:
set wildmode=list:longest
set wildignore=*.o

" SmartCase: These two options, when set together, will make 
" /-style searches case-sensitive only if there is a capital 
" letter in the search expression. 
" *-style searches continue to be consistently case-sensitive.
set ignorecase 
set smartcase

" Title: This gives e.g. | page.html (~) - VIM |.
set title

" Scrolling: start the scrolling three lines before the border, 
" keeping more context around where you’re working.
set scrolloff=3

" CentralizedTmp: Rather than spread temp files all around 
" your filesystem, isolate them to a single directory:
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" FasterScroll: 3 lines instead of 1
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" LimitedLineNumbering:
set ruler

" These should be already there
" Intuitive backspacing in insert mode
set backspace=indent,eol,start
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed
" If the search term highlighting gets annoying, set a key to switch it off temporarily:
nmap <silent> <leader>n :silent :nohlsearch<CR>

" VisibleTabs: The following will make tabs and trailing spaces visible when requested:
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" ShortMess: You can shorten command-line text and other info tokens with, e.g.:
set shortmess=atI

" VisualBell: do not beep
set visualbell

"""""""""""""""""""
" CUSTOM FUNCTIONS
"""""""""""""""""""
""" FocusMode
function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    set noruler
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    set ruler
    execute 'colorscheme ' . g:colors_name
  endif
endfunc

nnoremap <leader><F1> :call ToggleFocusMode()<cr>

""""""""""""""""
" CUSTOM KEYS
""""""""""""""""

" TABBED MODE
nmap <leader>t :tabnew<CR>

nmap <leader>ty :tabn<CR>
nmap <leader>tr :tabp<CR>

nmap <leader>tt <C-w>gf
" SPLIT MODE
nmap <leader>e :vsplit<CR>
nmap <leader>o :split<CR>

nmap <leader>j <C-w><Down>
nmap <leader>k <C-w><Up>
nmap <leader>h <C-w><Left>
nmap <leader>l <C-w><Right>
nmap <leader>w <C-w>q

nmap <leader>J <C-w>-
nmap <leader>K <C-w>+
nmap <leader>H <C-w><
nmap <leader>L <C-w>>

" LINE NUMBERS
nmap <leader>/ :set invnumber<CR>

" CTAGS REMAP
"nmap <c-[> <C-T>

" COPY/PASTE FROM CLIPBOARD
"vmap <leader><C-c> "*y
"nmap <leader><C-v> "*gP
"vmap <leader><C-x> "*d

cmap W w
cmap Q q
""""""""""""""""""""""""""""""""""
" CUSTOM CONFIGURATION PARAMETERS
""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"""
