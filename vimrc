set nocompatible

" remappings
	" unmap the arrow keys
		noremap <Up> <Nop>
		noremap <Down> <Nop>
		noremap <Left> <Nop>
		noremap <Right> <Nop>

	" set B and E to go to (B)eginning and (E)nd of line
		noremap B ^
		noremap E $

	" allow jk to exit insert mode
		inoremap jk <Esc>

	" set enter to new line
		nmap <Enter> o<Esc>
		nmap<S-Enter> O<Esc>

	" add indent funtionality to the tab keys
		noremap <Tab> >><esc>
		noremap <S-Tab> <<<esc>

	"set space to insert mode plus space
		nmap <Space> a

	" 'q' is save quit in normal mode
		nmap q ZZ

	"remove all trailing whitespace
		nnoremap <Leader>rm :%s/\s\+$//e<CR>

" settings
	" tab spaces
		set tabstop=4
		set softtabstop=4
		set shiftwidth=4
		match ErrorMsg '\s\+$' "show trailing whitespace

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

	" backup settings
		set backup
		set backupdir=~/.vimBackup
		set noswapfile

	" folding
		set foldmethod=indent
		set foldnestmax=10
		set nofoldenable
		set foldlevel=2

	" copy / paste settings
		set pastetoggle=<f10>
		set clipboard=unnamed
		noremap p "0p

	" search settings
		set ignorecase          " ignorecase for search
		set smartcase           " case sensitive if at least one is capitalized
		set incsearch           " do incremental searching

	" Allow searching through full directory
		set path+=**
		set wildmenu
