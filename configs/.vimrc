" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'vim-airline/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'jeaye/color_coded'
Plugin 'jewes/Conque-Shell'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/gdbmgr'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'amiorin/vim-project'
Plugin 'klen/python-mode'

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
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


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

" Disable arrow keys
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        execute prefix . "noremap " . key . " <Nop>"
    endfor
endfor

" Folding
set foldenable
set foldclose=""
set foldcolumn=1
set foldlevel=10
set foldlevelstart=10
set foldmethod=indent
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo
