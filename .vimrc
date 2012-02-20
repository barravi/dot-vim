set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=$GOROOT/misc/vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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

" Golang repository
Bundle 'jnwhiteh/vim-golang'

" Solarized color scheme
Bundle 'altercation/vim-colors-solarized'

" Python advanced syntax highlighting
Bundle 'python.vim'

filetype plugin indent on
syntax on

""" SOLARIZED CONFIGURATIONn
"set background=light
"let g:solarized_termcolors=256
set background=dark
let g:solarized_termtrans=1
colorscheme solarized


""""""""""""""""
" CUSTOM KEYS
""""""""""""""""
" TABBED MODE
map ,t <ESC>:tabnew<CR>
map ,<Right> <ESC>:tabn<CR>
map ,<Left> <ESC>:tabp<CR>

