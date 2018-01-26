"
" Configuration based on Vincent Driessen <vincent@datafox.nl> configuration
"
"
" Use vim settings, rather then vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

" Use pathogen to easily modify the runtime path to include all plugins under
" the ~/.vim/bundle directory
filetype off					" force reloading *after* pathogen loaded
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on		" enable detection, plugins and indenting in one step
syntax on

" Change Background
set background=dark				" change background to dark

" Change shell
set shell=bash					" make bash the default shell

" Change the mapleader from \ to ,
let mapleader=","
let maplocalleader="\\"

" Editing behaviour {{{
set showmode					" always show what mode we're currently editing in
set wrap						" wrap lines
set tabstop=4					" a tab is four spaces
set softtabstop=4				" when hitting <BS>, pretend like a tab is removed, even if spaces
set shiftwidth=4				" number of spaces to use for autoindenting
set shiftround					" use multiple of shiftwidth when indenting with '<' and '>'
set expandtab					" expand tabs by default (overloadable per file type later)
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set autoindent					" always set autoindenting on
set copyindent					" copy the previous indentation on autoindenting
set nonumber					" do not always show line numbers
set showmatch					" set show matching parenthesis
set ignorecase					" ignore case when searching
set smartcase					" ignore case if search pattern is all lowercase,
								"	 case-sensitive otherwise
set smarttab					" insert tabs on the start of a line according to
								"	 shiftwidth, not tabstop
set scrolloff=4					" keep 4 lines off the edges of the screen when scrolling
"	set virtualedit=all			 " allow the cursor to go in to "invalid" places
set hlsearch					" highlight search terms
set incsearch					" show search matches as you type
set gdefault					" search/replace "globally" (on a line) by default
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·

set nolist						" don't show invisible characters by default,
								" but it is enabled for some file types (see later)
set paste						" enable paste mode
set pastetoggle=<F2>			" when in insert mode, press <F2> to go to
								"	 paste mode, where you can paste mass data
								"	 that won't be autoindented
"	set mouse=a					" enable using the mouse if terminal emulator
								"	 supports it (xterm does)
set fileformats="unix,dos,mac"
set formatoptions+=1			" When wrapping paragraphs, don't end lines
								"	 with 1-letter words (looks stupid)

set nrformats=					" make <C-a> and <C-x> play well with
								"	 zero-padded numbers (i.e. don't consider
								"	 them octal or hex)

set shortmess+=I				" hide the launch screen
set clipboard=unnamed			" normal OS clipboard interaction
set autoread					" automatically reload files changed outside of Vim

" Toggle show/hide invisible chars
nnoremap <leader>i :set list!<cr>

" Toggle line numbers
nnoremap <leader>N :setlocal number!<cr>

" Thanks to Steve Losh for this liberating tip
" See http://stevelosh.com/blog/2010/09/coming-home-to-vim
nnoremap / /\v
vnoremap / /\v

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
" }}}

"	" Folding rules {{{
"	set foldenable					" enable folding
"	set foldcolumn=2				" add a fold column
"	set foldmethod=marker			" detect triple-{ style fold markers
"	set foldlevelstart=99			" start out with everything unfolded
"	set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
"									" which commands trigger auto-unfold
"	function! MyFoldText()
"		let line = getline(v:foldstart)
"	
"		let nucolwidth = &fdc + &number * &numberwidth
"		let windowwidth = winwidth(0) - nucolwidth - 3
"		let foldedlinecount = v:foldend - v:foldstart
"	
"		" expand tabs into spaces
"		let onetab = strpart('			', 0, &tabstop)
"		let line = substitute(line, '\t', onetab, 'g')
"	
"		let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
"		let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
"		return line . ' …' . repeat(" ",fillcharcount) . foldedlinecount . ' '
"	endfunction
"	set foldtext=MyFoldText()
"	
"	" Mappings to easily toggle fold levels
"	nnoremap z0 :set foldlevel=0<cr>
"	nnoremap z1 :set foldlevel=1<cr>
"	nnoremap z2 :set foldlevel=2<cr>
"	nnoremap z3 :set foldlevel=3<cr>
"	nnoremap z4 :set foldlevel=4<cr>
"	nnoremap z5 :set foldlevel=5<cr>
"	" }}}

" Editor layout {{{
set termencoding=utf-8
set encoding=utf-8
set lazyredraw					" don't update the display while executing macros
set laststatus=2				" tell VIM to always put a status line in, even
								"	 if there is only one window
set cmdheight=2					" use a status bar that is 2 rows high
" }}}

" Vim behaviour {{{
set hidden						" hide buffers instead of closing them this
								"	 means that the current buffer can be put
								"	 to background without being written; and
								"	 that marks and undo history are preserved
set switchbuf=useopen			" reveal already opened files from the
								" quickfix window instead of opening new
								" buffers
set history=1000				" remember more commands and search history
set undolevels=1000				" use many muchos levels of undo
if v:version >= 730
	set undofile				" keep a persistent backup file
	set undodir=/tmp
endif
set nobackup					" do not keep backup files, it's 70's style cluttering
set noswapfile					" do not write annoying intermediate swap files,
								"	 who did ever restore from swap files anyway?
set directory=/tmp
								" store swap files in one of these directories
								"	 (in case swapfile is ever turned on)
set viminfo='20,\"80			" read/write a .viminfo file, don't store more
								"	 than 80 lines of registers
set wildmenu					" make tab completion for files/buffers act like bash
set wildmode=list:full			" show a list when pressing tab and complete
								"	 first full match
set wildignore=*.swp,*.bak,*.pyc,*.class
set title						" change the terminal's title
set visualbell					" don't beep
set noerrorbells				" don't beep
set showcmd						" show (partial) command in the last line of the screen
								"	 this also shows visual selection info
set nomodeline					" disable mode lines (security measure)
"set ttyfast					 " always use a fast terminal
"	set cursorline					" underline the current line, for quick orientation
" }}}

" Shortcut mappings {{{
" Avoid accidental hits of <F1> while aiming for <Esc>
noremap! <F1> <Esc>

" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

" Common abbreviations / misspellings {{{
source ~/.vim/autocorrect.vim
" }}}

" Extra vi-compatibility {{{
" set extra vi-compatible options
set cpoptions+=$     " when changing a line, don't redisplay, but put a '$' at
                     " the end during the change
set formatoptions-=o " don't start new lines w/ comment leader on pressing 'o'
au filetype vim set formatoptions-=o
                     " somehow, during vim filetype detection, this gets set
                     " for vim files, so explicitly unset it again
au filetype crontab setlocal backupcopy=yes
                     " editing crontab files needs to happen in-place
" }}}

