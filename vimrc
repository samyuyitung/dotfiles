set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'kien/ctrlp.vim'
	Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on
syntax on

" Remap the leader
	let mapleader=','

" Plugin Settings
	" NerdTree
		let NERDTreeShowLineNumbers=1
		autocmd FileType nerdtree setlocal relativenumber
		nmap <leader>n :NERDTreeToggle<CR>

		nnoremap <C-h> <C-w>h
		nnoremap <C-j> <C-w>j
		nnoremap <C-k> <C-w>k
		nnoremap <C-l> <C-w>l

" remappings
	" unmap the arrow keys
		noremap <Up> <Nop>
		noremap <Down> <Nop>
		noremap <Left> <Nop>
		noremap <Right> <Nop>

	" Unmap space and backspace in normal
		noremap <Space> <Nop>
		noremap <Backspace> <Nop>

	" allow jk to exit insert and visual mode
		inoremap jk <Esc>
		vnoremap jk <Esc>

	" add indent funtionality to the tab keys
		noremap <Tab> >><esc>
		noremap <S-Tab> <<<esc>

	" remove all trailing whitespace
		nnoremap <Leader>rm :%s/\s\+$//e<CR>

	" mmap ; to :
		nnoremap ; :

	" Map :W to :w
		:ca W w

	" insert current ISO date
		nnoremap <Leader>d "=strftime("%Y-%m-%d")<CR>P

	" Insert name
		nnoremap <Leader>n iSam Yuyitung<CR>

	"insert title
		nnoremap <Leader>t <Leader>d <Leader>n
" settings
	" tab spaces
		set tabstop=4
		set softtabstop=4
		set shiftwidth=4

	"show trailing whitespace
		match ErrorMsg '\s\+$'

	" UI line numbers, and match
		set relativenumber
		set number
		set showmatch
		set vb t_vb=".
		set ruler

	" Colors and stuff
		syntax enable
		colorscheme koehler

	" Change to DOS line endings
		set fileformats=dos

	" file type recognition and indenting
		filetype on
		filetype indent on

	" backup settings
		set noswapfile

	" folding
		set foldmethod=indent
		set foldnestmax=10
		set nofoldenable
		set foldlevel=2

	" copy / paste settings
		set pastetoggle=<f10>
		set clipboard=unnamed

	" search settings
		set ignorecase          " ignorecase for search
		set smartcase           " case sensitive if at least one is capitalized
		set incsearch           " do incremental searching

	" Allow searching through full directory
		set path+=**
		set wildmenu
