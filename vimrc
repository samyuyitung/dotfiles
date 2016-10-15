set nocompatible 

" unmap the arrow keys
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop>


" set B and E to go to (B)eginning and (E) of line
	noremap B ^
	noremap E $

" allow jk to exit insert mode 
	inoremap jk <Esc>

" set enter to new line 
	nmap <Enter> o<esc>

" add indent funtionality to the tab keys
	noremap <Tab> >><esc> 
	noremap <S-Tab> <<<esc> 

" remap ; to : in normal mode
	nmap ; :
	nmap <Space> i<space>

" 'q' is save quit in normal mode
	nmap q ZZ

" tab spaces
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4

" UI line numbers, and match
	set relativenumber
	set number
	set showmatch
	set vb t_vb=".
	set ruler
	syntax enable
	colorscheme desert

" Change to DOS line endings
" **DISABLED FOR MAC** set fileformats=dos

" file type recognition and indenting
	filetype on           
	filetype indent on

" behavior settings
	set nowrap
	set foldmethod=indent
	set backup
	set backupdir=~/.vimBackup
	set noswapfile
	set sidescroll=1

" remove spacing on pasting
	set pastetoggle=<f10>

" search settings
" search
	set ignorecase          " ignorecase for search
	set smartcase           " case sensitive if at least one is capitalized
	set incsearch            " do incremental searching


