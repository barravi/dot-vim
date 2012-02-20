set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=$GOROOT/misc/vim
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" original repos on github
" Fugitive: Git management inside VIM
Bundle 'tpope/vim-fugitive'
" Golang repository
Bundle 'jnwhiteh/vim-golang'

filetype plugin indent on
syntax on

""""""""""""""""
" KEY MAPPINGS
"
""""""""""""""""
map ,t <ESC>:tabnew<CR>
map ,<Right> <ESC>:tabn<CR>
map ,<Left> <ESC>:tabp<CR>

