" General Settings
" Vim documentation
" http://vimdoc.sourceforge.net/htmldoc/options.html

"" essential
set nocompatible
let g:platform = GetPlatform()

"" encoding
scriptencoding utf-8
set encoding=utf-8

"" moving around, searching and patterns
"set whichwrap+=<,>,[,]
set nostartofline " Don’t reset cursor to start of line when moving around.
if exists("+autochdir")
  set autochdir
endif
set wrapscan " Wrap around to start of file when searching
set incsearch " Highlight dynamically as pattern is typed
set hlsearch " Highlight searches
set smartcase " Use case if any caps used

"" displaying text
set scrolloff=1 " Start scrolling three lines before the horizontal window border
set nowrap " Don't wrap lines, just display as one long line.
set lazyredraw " Redraw lazily (go figure)
set list " Show whitespace characters
set listchars=tab:▸\ ,trail:·,nbsp:_ " Representation of whitespace chars
set number " Display line numbers

"" multiple windows
set equalalways " Resize windows to be the same size after splitting
set splitbelow " Puts new window from vertical split on the bottom
set splitright " Puts new window from horizontal split on the right

"" multiple tab pages
set showtabline=1 " Show tabs at the top if there are two or more tabs

"" using the mouse
set mouse=a " Enable mouse in all modes


"" messages and info
set shortmess=aoOstTI " Messages when starting vim (don't show them)
set showcmd " Show the (partial) command as it’s being typed
set showmode " Show the current mode
set ruler " Show the line and column position of the cursor
set cursorline " Highline the current line a little
set report=0 " Always report the number of lines changed by a command
set noerrorbells " Don't flash the screen on errors (same for the below)
set novisualbell t_vb=".
set clipboard=unnamed " Use the OS clipboard by default (on versions compiled with `+clipboard`)

"" editing text
fixdel " Apparently fixes the backspace or delete key
"set textwidth=79
set backspace=indent,eol,start " Allow backspacing over autoindent, line breaks, etc
set showmatch " Show matching brackets

"" tabs and indenting
set tabstop=4 " Make tab characters as wide as 4 spaces
set shiftwidth=4 " Number of spaces to use for autoindent
set smarttab " Insert <Tab> key presses according to shiftwidth
set softtabstop=4 " Number of spaces a tab character counts for during editing
set shiftround " Round indentation to multiple of shiftwidth (Nice!)
set expandtab " Type spaces instead of tabs
set autoindent " Start indent on current line's indent
set smartindent " Indenting for C like programs?

"" Set tabstops for specific types of files
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype sql setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
autocmd BufRead,BufNewFile *.erb setlocal ts=2 sw=2 expandtab

" in HTML, don't have a textwidth because it auto-wraps and is annoying
autocmd FileType html set textwidth=0 matchpairs+=<:> softtabstop=2 shiftwidth=2
autocmd FileType htmldjango set textwidth=0

" in Makefiles, don't expand tabs to spaces and reset the standard tab
" length because Makefiles require the indentation of tabs for targets
autocmd FileType make setlocal noexpandtab shiftwidth=8

" xsd files
autocmd FileType xsd,xml set textwidth=0


"" C program indenting
set cinoptions=:0.5s,=0.5s,l1,g0.5s,h0.5s,t0,i0,(0
"              |     |     |  |     |     |  |  +-- indent from unclosed parens
"              |     |     |  |     |     |  +-- C++ base class decls and initializations
"              |     |     |  |     |     +-- indent function return type at margin
"              |     |     |  |     +-- places statements after C++ scope decls
"              |     |     |  +--  place C++ scope declarations
"              |     |     +-- align with case label instead of statement
"              |     +-- place statements after case label
"              +-- placement of case after switch statement
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case

"" folding
set nofoldenable " Open all folds
set foldmarker={,}
set foldmethod=syntax
set foldlevel=0
set foldopen+=jump

"" reading and writing files
set modeline " For vim modelines
set fileformats=unix,mac,dos " End of line formats to try
set backup " Create backup when writing over a file
set backupdir=~/.vim/backup
set directory=~/.vim/swap
if has("persistent_undo")
  set undofile
  set undodir=~/.vim/undo
endif
"set autowrite
"set autoread

"" command line editing
set history=60 " Set 60 commands of history
set wildmode=list:longest,full " Text completion
set wildmenu " More text completion
set wildignore=*/tmp/*,*.swp,*.o,*.gch,*.pyc,*.jpg,*.gif,*.png,*.a,*.so

"" status line
"set fillchars+=stl:\ ,stlnc:\
set laststatus=2 " Always show the status line

"" viminfo for saving state per file
set viminfo=%,<500,s10,'100,/50,:100,h,f0,n~/.viminfo
"           | |    |   |   |    | |  + viminfo file path
"           | |    |   |   |    | + file marks 0-9,A-Z 0=NOT stored
"           | |    |   |   |    + disable 'hlsearch' loading viminfo
"           | |    |   |   + command-line history saved
"           | |    |   + search history saved
"           | |    + files marks saved
"           | + lines saved each register (old name for <, vi6.2)
"           + save/restore buffer list

"" search
set gdefault " Always enable global searching by default

"" local .vimrc files
set noexrc " Don't allow them
set secure " Only allow them to run safe commands

