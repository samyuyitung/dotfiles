set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
	" Pretty
		Plugin 'Yggdroot/indentLine.git'

	" I'm lazy
		Plugin 'jiangmiao/auto-pairs'                   " matching brackets and quotes
		Plugin 'kien/ctrlp.vim'                         " searches all instances
		Plugin 'scrooloose/nerdcommenter'               " ezpz comments
		Plugin 'scrooloose/syntastic'                   " compiler-esque
		Plugin 'scrooloose/nerdtree'                    " blessed tree
		Plugin 'jeffkreeftmeijer/vim-numbertoggle'      " toggleline numbers
		Plugin 'ajh17/VimCompletesMe'                   " autocomplete
		Plugin 'easymotion/vim-easymotion'
		Plugin 'rking/ag.vim'                           " silver search
		Plugin 'tpope/vim-surround'                     " cs'(
		Plugin 'itchyny/vim-cursorword'                 " underlines like words
		Plugin 'mbbill/undotree'                        " trees dope


	" language specific
		Plugin 'gregsexton/MatchTag'                    " html tag colouring
		Plugin 'rstacruz/sparkup'                       " html autocomplete, div <C+E>

call vundle#end()

filetype plugin indent on
syntax on

" Plugin Settings
	" Easymotion
		" s{char}{char} to move to {char}{char}
		nmap s <Plug>(easymotion-overwin-f2)
		" Move to line
		map <Leader>L <Plug>(easymotion-bd-jk)
		nmap L <Plug>(easymotion-overwin-line)

	" NerdTree
		let NERDTreeShowLineNumbers=1
		autocmd FileType nerdtree setlocal relativenumber
		nnoremap n :NERDTreeToggle<CR>

	" Syntastic
		set statusline+=%#warningmsg#
		set statusline+=%{SyntasticStatuslineFlag()}
		set statusline+=%*

		let g:syntastic_always_populate_loc_list = 1
		let g:syntastic_auto_loc_list = 1
		let g:syntastic_check_on_open = 1
		let g:syntastic_check_on_wq = 0

		let g:syntastic_javascript_checkers = ['jshint']
		let g:syntastic_cpp_compiler = 'clang++'
		let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
		let g:syntastic_css_checkers = ['csslint']
		let g:syntastic_mode_map = { 'passive_filetypes': ['java']  }
		" disables syntastic for java because I have eclim

	" vertical line indentation
		let g:indentLine_color_term = 239
		let g:indentLine_color_gui = '#A5E57E'
		let g:indentLine_char = '¦'

	" You Complete me
		let g:ycm_filetype_blacklist = { 'java': 1 }

	" Autocomplete
		autocmd FileType text,markdown let b:vcm_tab_complete = 'dict'
		autocmd FileType java inoremap <leader><tab> <C-x><C-u>

" remappings

	" Remap the leader
		let mapleader=','

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

	" set space to insert mode plus space
		nmap <Space> a

	" 'q' is save quit in normal mode
		nmap q ZZ

	" remove all trailing whitespace
		nnoremap <Leader>rm :%s/\s\+$//e<CR>

	" Make the backspace work again (OSX only?)
		set bs=2

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
		colorscheme koehler

	" Change to DOS line endings
		set fileformats=dos

	" file type recognition and indenting
		filetype on
		filetype indent on

	" backup settings
		" set backup
		" set backupdir=~/.vimBackup
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
