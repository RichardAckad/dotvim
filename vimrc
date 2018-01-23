"call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

syntax on					" enable syntax highlighting
"   set nocompatible				" use Vim mode instead of pure Vi, it must be the first instruction
"   filetype off					" Helps force plugins to load correctly when it is turned back on below
"   filetype on					" enable file type detection
"   filetype plugin on				" enable file type detection
"
"   set hidden					" Allow hidden buffers
"   set history=100					" Keep 100 commands in history
"   set paste					" Put Vim in Paste mode
"
"   filetype indent on				" automatically indent code
"   set wrap					" word wrap visually
"   set tabstop=8					" set tabulator length to 8 columns
"   set shiftwidth=8				" set indentation depth to 8 columns
"   set softtabstop=8				" backspacing over 8 spaces like over tabs
"   set noexpandtab					" Leave tab as-is and do not replace by spaces
"   "set smartindent
"   "set autoindent					" Autoindent
"
"   " To find available color schemes
"   " "ls -1 /usr/share/vim/vimXX/colors"
"   " where XX are 2 numbers
"   "	blue.vim
"   "	darkblue.vim
"   "	default.vim
"   "	delek.vim
"   "	desert.vim
"   "	elflord.vim
"   "	evening.vim
"   "	industry.vim
"   "	koehler.vim
"   "	morning.vim
"   "	murphy.vim
"   "	pablo.vim
"   "	peachpuff.vim
"   "	ron.vim
"   "	shine.vim
"   "	slate.vim
"   "	torte.vim
"   "	zellner.vim
"   "colorscheme delek				" set color scheme, must be installed first
"colorscheme dracula
"   set background=dark				" dark background for console
"
"   set encoding=utf-8				" encoding used for displaying file
"   set ruler					" show the cursor position all the time
"   set showmatch					" highlight matching braces
"   set showmode					" show insert/replace/visual mode
"   set showcmd					" Show (partial) command in the status line
"
"   set confirm					" confirm :q in case of unsaved changes
"   set fileencoding=utf-8				" encoding used when saving file
"   "set nobackup					" do not keep the backup~ file
"
"   set visualbell					" Blink cursor on error instead of beeping (grr)
"   set hidden					" Hide buffers when they are abandoned
"   set wildmenu
"
"   set hlsearch					" highlight search results
"   set ignorecase					" do case insensitive search...
"   set incsearch					" do incremental search
"   set smartcase					" ...unless capital letters are used
"
"   "set mouse=a					" Enable mouse usage (all modes)
"
"   autocmd BufWritePre * :%s/\s\+$//e		" command to remove whitespaces on save
