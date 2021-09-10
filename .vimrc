syntax on 
set encoding=utf-8
set relativenumber
set nu
set nocompatible
set nobackup
set wildmenu
set showcmd
set mouse=a
set noswapfile
set undofile undodir=$HOME/.vim/undodir

" Identention 
set autoindent softtabstop=4 shiftwidth=4 tabstop=4

call plug#begin('~/.vim/plugged')

Plug 'simplenote-vim/simplenote.vim'
Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'

call plug#end()

let mapleader = "\<Space>"

noremap <Leader>t :NERDTreeToggle<CR>

" Copy and paste to system clipboard (required gvim installed)
vnoremap <C-c> "*Y :let @+=@*<CR>
map <C-p> "+P

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" re-map window navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

source ~/.simplenoterc
