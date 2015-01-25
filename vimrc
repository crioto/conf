" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()          
filetype plugin indent on    

syntax enable
set nocompatible
set cindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set et
set sw=4
set smarttab
set bs=2
set sm!
set number
colors jellybeans

" Airline
set t_Co=256
set laststatus=2
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'

" Tab control
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" Split contorl
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
