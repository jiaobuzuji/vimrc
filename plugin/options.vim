vim9script
# vim:fdm=marker fmr={,}
#=======================================================================
# Vim options setting
# Author: jiaobuzuji@163.com
# Github: https://github.com/jiaobuzuji
#=======================================================================

#  2 moving around, searching and patterns {1
set whichwrap=b,h,l,<,>,[,]  # list of flags specifying which commands wrap to another line
set ignorecase  #ignore case when using a search pattern
set smartcase  #override 'ignorecase' when pattern has upper case characters
set incsearch  #show match for partly typed search command
# set autochdir  #change to directory of file in buffer
set wrapscan # search commands wrap around the end of the buffer

#  3 tags {1
#  4 displaying text {1
set list  #display unprintable characters by set list
set listchars=tab:>\ ,extends:>,precedes:<,nbsp:.,trail:-  # Strings to use in 'list' mode and for the |:list| command
set scrolloff=5 # number of screen lines to show around the cursor
set sidescrolloff=5 # minimal number of columns to keep left and right of the cursor
set lazyredraw  # Don't update the display while executing macros
# set number # show the line number for each line
set relativenumber # show the relative line number for each line
set cmdheight=1  #number of lines used for the command-line
set nowrap   #don't auto linefeed
# set linebreak #wrap long lines at a character in 'breakat'

#  5 syntax, highlighting and spelling {1
set hlsearch #highlight all matches for the last used search pattern
set cursorline # highlight the screen line of the cursor
set background=dark
set termguicolors
# set cursorcolumn # Don't highlight the screen column of the cursor
# if has('gui_running')+has('gui_macvim')
#   set spell # Spell checking on
# endif
set synmaxcol=500 # maximum column to look for syntax items

#  6 multiple windows {1
set hidden # don't unload a buffer when no longer shown in a window
set laststatus=2 #always show status line
set splitbelow # a new window is put below the current one
set splitright # a new window is put right of the current one
set winminheight=0  # Windows can be 0 line high
set termwinkey=<c-y> # key that precedes Vim commands in a terminal window

#  7 multiple tab pages {1
set showtabline=1 # 0, 1 or 2; when to use a tab pages line
set tabpagemax=50 #maximum number of tab pages to open for -p and "tab all"
# set guitablabel=%N\ %t%m  #do not show dir in tab

#  8 terminal {1
set ttyfast # terminal connection is fast

#  9 using the mouse {1
set mouse=a #list of menu_flags for using the mouse,support all

# 10 GUI {1
# if has('win32') + has('win64')
#   set guifont=Consolas:h12:cANSI
# else
#   set guifont=Monospace\ 12
# endif
if has('win32') + has('win64') >= 1
  set guifont=Hack\ Nerd\ Font\ Mono:h12
else
  set guifont=Hack\ Nerd\ Font\ Mono\ 12
endif
set guioptions=!cdi # External commands are executed in a terminal window.
set winaltkeys=no # "no", "yes" or "menu"; how to use the ALT key

# 11 printing {1
set printfont=Yahei_Mono:h10:cGB2312  #name of the font to be used for :hardcopy

# 12 messages and info {1
set belloff=all
set report=0  #Threshold for reporting number of lines changed
set helplang=en,cn
set confirm  #start a dialog when a command fails
# set ruler  #show cursor position below each window
# set rulerformat=%30(%=\:b%n%y\[%{&fenc}\|%{&ff}\]%m%r%w\ %l,%c%V\ %P%) # A ruler on steroids
set showcmd #show (partial) command keys in the status line
set showmode #display the current mode in the status line
set shortmess-=S # list of flags to make messages shorter
set shortmess+=c # list of flags to make messages shorter
set more #pause listings when the screen is full

# 13 selecting text {1
set clipboard^=unnamed,unnamedplus #autoselect" to always put selected text on the clipboardset
set selection=inclusive  #"old", "inclusive" or "exclusive"; how selecting text behaves

# 14 editing text {1
set showmatch #when inserting a bracket, briefly jump to its match
set matchtime=2 # tenth of a second to show a match for 'showmatch'
set matchpairs+=":" # list of pairs that match for the "%" command
set textwidth=0 #80, "0" disable
set backspace=indent,eol,start  #specifies what <BS>, CTRL-W, etc. can do in Insert mode
set undofile # automatically save and restore undo history
set undodir=$VIMFILES/undo # list of directories for undo files  " $VIMFILES/undodir/ or '$VIMFILES/undodir', XXX It's Error!!
set completeopt=preview,menuone,popup
set completepopup=height:10,width:60,highlight:Pmenu,border:off
# set completefunc # user defined function for Insert mode completion
# set omnifunc # function for filetype-specific Insert mode completion

# 15 tabs and indenting {1
set smartindent #do clever autoindenting
set cindent  #enable specific indenting for C code
set tabstop=2  #number of spaces a <Tab> in the text stands for
set shiftwidth=2 #number of spaces used for each step of (auto)indent
set softtabstop=2  #if non-zero, number of spaces to insert for a <Tab>
set expandtab
set smarttab #a <Tab> in an indent inserts 'shiftwidth' spaces
set shiftround # round to 'shiftwidth' for "<<" and ">>"

# 16 folding {1
set nofoldenable # enable folding
set foldmethod=syntax #folding type: "manual", "indent", "expr", "marker" or "syntax"
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
# set foldcolumn=1 #width of the column used to indicate folds
# set foldtext=JbzjFoldText()

# 17 diff mode {1
set diffopt+=vertical

# 18 mapping {1
set timeout  # allow timing out halfway into a mapping
set ttimeout # allow timing out halfway into a key code
set timeoutlen=650 # time in msec for 'timeout'
set ttimeoutlen=50 # time in msec for 'ttimeout'

# 19 reading and writing files {1
set modeline
set autowrite # automatically write a file when leaving a modified buffer
# set autowriteall # as 'autowrite', but works with more commands
set autoread   #autoread when a file is changed from the outside
set fileformats=unix,dos,mac
set nowritebackup # write a backup file before overwriting a file
set nobackup
set backupdir=$VIMFILES/backup

# 20 the swap file {1
set updatetime=300 # time in msec after which the swap file will be updated
set directory=$VIMFILES/swap//

# 21 command line editing {1
set history=1000  # keep 50 lines of command line history
set wildmenu
set wildoptions=pum
set wildmode=longest,full
set wildignore=*.swp,*.bak
set wildignore+=*.min.*,*.css.map
set wildignore+=*.jpg,*.png,*.gif
set wildignorecase

# 22 executing external commands {1
# 23 running make and jumping to errors (quickfix) {1
# 24 language specific {1
# 25 multi-byte characters {1
set encoding=utf-8
set fileencoding=utf-8
# set termencoding=utf-8
# set fileencodings=ucs-bom,utf-8,gb2312,gb1830,cp936,ansi,utf-16le,cp1252,iso-8859-15,big5,euc-jp,euc-kr,gbk
set fileencodings=ucs-bom,utf-8,cp936,gb1830,big5,euc-jp,euc-kr,gbk
# if v:lang=~? '^\(zh\)\|\(ja\)\|\(ko\)'
#   set ambiwidth=double
# endif
set ambiwidth=single

# 26 various {1
set virtualedit=block         # Use virtual editing in <C-v>  (block select)
set sessionoptions=curdir,unix,slash,tabpages,terminal,winsize,resize
set viewoptions=cursor,unix,slash # Better Unix / Windows compatibility
set signcolumn=yes # whether to show the signcolumn

set viminfofile=$VIMFILES/.viminfo

# scriptencoding must be placed encoding
scriptencoding utf-8

