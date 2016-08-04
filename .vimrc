set nocompatible 

" unmap the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" set B and E to go to (B)eginning and (E) of line
noremap B ^
noremap E $
inoremap jk <Esc>

" remap ; to : in normal mode
nmap ; :
nmap <Space> i

" 'q' is save quit in normal mode
nmap q ZZ

" tab spaces
set tabstop=4
set softtabstop=4

" UI line numbers, and match
set relativenumber
set number
set showmatch
set vb t_vb=".
set ruler
syntax enable
colorscheme desert

" Change to DOS line endings
set fileformats=dos

" file type recognition and indenting
filetype on           
filetype indent on
