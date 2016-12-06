" Header and Notes {{{
" vim: set et sts=2 ts=2 sw=2 tw=78 fdm=marker fdl=0 fmr& spell:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"@author     jiaobuzuji,jiaobuzuji@163.com
" }}}

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif


" Environment {{{

    " Identify platform {{{
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win16') || has('win32') || has('win64'))
        endfunction
    " }}}

    " Basics {{{
        if !WINDOWS()
            set shell=/bin/sh
            let $MYDIR=$HOME
        else
            let $HOME=$VIM
            let $MYDIR=$VIM
        endif
    " }}}

    " Windows Compatible {{{
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if WINDOWS()
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after

          " Be nice and check for multi_byte even if the config requires
          " multi_byte support most of the time
          if has("multi_byte")
            " Windows cmd.exe still uses cp850. If Windows ever moved to
            " Powershell as the primary terminal, this would be utf-8
            set termencoding=cp850
            " Let Vim use utf-8 internally, because many scripts require this
            set encoding=utf-8
            setglobal fileencoding=utf-8
          endif
        endif
    " }}}

    "encode {{{
        " Windows has traditionally used cp1252, so it's probably wise to
        " fallback into cp1252 instead of eg. iso-8859-15.
        " Newer Windows files might contain utf-8 or utf-16 LE so we might
        " want to try them first.
        set fileencodings=ucs-bom,utf-8,gb2312,gb1830,ansi,cp936,utf-16le,cp1252,iso-8859-15,big5,euc-jp,euc-kr,gbk
        "set fileencodings=ucs-bom,utf-8,utf-16le,cp1252,iso-8859-15,cp936,gb1830,big5,euc-jp,euc-kr,gbk
        if v:lang=~? '^\(zh\)\|\(ja\)\|\(ko\)'
          set ambiwidth=double
        endif
    "}}}

language messages en_US.UTF-8

" }}}
" Use bundles config {{{
    if filereadable(expand("$MYDIR/.vimrc.bundles"))
        " list only the plugin groups you will use
        let g:bundle_groups=['general', 'programming', 'writing']
        source $MYDIR/.vimrc.bundles
    endif
" }}}

" important {{{

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

"}}}
" messages and info {{{

set helplang=cn,en "list of preferred languages for finding help

if has('cmdline_info')
  set ruler  "show cursor position below each window
  set rulerformat=%30(%=\:b%n%y\[%{&fenc}\|%{&ff}\]%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
  set showcmd "show (partial) command keys in the status line
  set showmode "display the current mode in the status line
endif

set more "pause listings when the screen is full
set confirm "start a dialog when a command fails

"do not Ring the bell (beep or screen flash) for error messages
set novisualbell
set noerrorbells

"}}}
" multiple windows {{{
set laststatus=2 "0, 1 or 2; when to use a status line for the last window
"}}}
" multiple tab pages {{{
set showtabline=1 "0, 1 or 2; when to use a tab pages line
set tabpagemax=15 "maximum number of tab pages to open for -p and "tab all"
set winminheight=0              " Windows can be 0 line high
set guitablabel=%N\ %t%m
" }}}
" displaying text {{{

" set number " show the line number for each line
set relativenumber " show the relative line number for each line
set cmdheight=1  "number of lines used for the command-line
set lazyredraw  " don't redraw while executing macros
set list
set listchars=tab:›\ ,trail:-,extends:#,nbsp:. " Highlight problematic whitespace

"}}}
" selecting text {{{

"unnamed" to use the * register like unnamed register
"autoselect" to always put selected text on the clipboardset clipboard+=unnamed
if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard+=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
        set clipboard+=unnamed
    endif
endif

set scrolljump=1 "5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set selection=inclusive  ""old", "inclusive" or "exclusive"; how selecting text behaves

"}}}
" editing text {{{

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set showmatch                   " Show matching brackets/parenthesis

"}}}
" moving around, searching and patterns {{{

set incsearch  "show match for partly typed search command

set ignorecase  "ignore case when using a search pattern
set smartcase  "override 'ignorecase' when pattern has upper case characters

"}}}
" syntax, highlighting and spelling {{{

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch "highlight all matches for the last used search pattern

  set cursorline " highlight the screen line of the cursor
  set nocursorcolumn " Don't highlight the screen column of the cursor
  set spell                           " Spell checking on

endif

"}}}
" tabs and indenting {{{

set smartindent "do clever autoindenting
set cindent  "enable specific indenting for C code
set tabstop=4  "number of spaces a <Tab> in the text stands for
set softtabstop=4  "if non-zero, number of spaces to insert for a <Tab>
set smarttab "a <Tab> in an indent inserts 'shiftwidth' spaces
set shiftwidth=4 "number of spaces used for each step of (auto)indent
set expandtab "expand <Tab> to spaces in Insert mode

"}}}
" command line editing {{{
set history=50  " keep 50 lines of command line history
set wildmenu "command-line completion shows a list of matches
set wildmode=longest,full "list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set wildignorecase "ignore case when completing file names
"}}}
" folding {{{
set foldenable "set to display all folds open
set foldmethod=syntax "folding type: "manual", "indent", "expr", "marker" or "syntax"
set foldlevelstart=99 "value for 'foldlevel' when starting to edit a file
set foldcolumn=0 "width of the column used to indicate folds
"}}}
" reading and writing files {{{
set backupext=.bak  "file name extension for the backup file
"}}}
" using the mouse {{{
set mouse=a "list of flags for using the mouse
"}}}
" various {{{
    set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
    set virtualedit=block             " Use virtual editing in <C-v>  (block select)
"}}}

" Key (re)Mappings {{{
let mapleader="," "leader key
let maplocalleader = '_'

" y$ -> Y Make Y behave like other capitals
nnoremap Y y$

"Reselect visual block after indent/outdent.
vnoremap < <gv
vnoremap > >gv

vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

" Surrounding
" inoremap ( ()<Esc>i
" inoremap { {}<Esc>i
" inoremap [ []<Esc>i

" Move and quit in windows
noremap <A-j> <C-W>j
noremap <A-k> <C-W>k
noremap <A-l> <C-W>l
noremap <A-h> <C-W>h
noremap <A-t> <C-W>t
noremap <A-b> <C-W>b
noremap <A-w> <C-W>w
noremap <A-+> <C-W>+
noremap <A--> <C-W>-
noremap <A-q> <C-W>q

" Insert new line in normal mode
noremap tt o<Up><Esc>
noremap TT O<Down><Esc>

nnoremap <Leader>/ :nohlsearch<CR>

" Save Current File
nnoremap <F2> :update<CR>
inoremap <F2> <Esc>:update<CR>

" Format Current File
nnoremap <F3> :set ff=unix<CR>:%s/\s\+$//<CR>:%s/\t/   /g<CR>

"}}}
" intelligence {{{

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  "
  "automatic recognition vt file as verilog
  autocmd BufRead,BufNewFile *.ucf set filetype=perl

  autocmd FileType verilog,VHDL set tabstop=3 shiftwidth=3 softtabstop=3 foldmethod=indent
  autocmd FileType make set noexpandtab
  autocmd FileType haskell,puppet,ruby,vim,yml setlocal expandtab shiftwidth=2 softtabstop=2

  " autocmd FileType markdown set conceallevel=2
  autocmd FileType vimwiki,markdown,text set nospell colorcolumn=78

else

  set autoindent  " always set autoindenting on

endif " has("autocmd")

"}}}
" vim UI {{{
    if filereadable(expand("$MYDIR/vimfiles/bundle/vim-colors-solarized/colors/solarized.vim"))
      if &t_Co > 2 || has("gui_running")
        set runtimepath+=$MYDIR/vimfiles/bundle/vim-colors-solarized/
        let g:solarized_termcolors=256
        let g:solarized_termtrans=1
        let g:solarized_contrast="normal"
        let g:solarized_visibility="normal"
        set background=dark
        colorscheme solarized             " Load a colorscheme
      endif
    endif
" }}}
" GUI Settings {{{

set linespace=0                 " No extra spaces between rows
    " GVIM- (here instead of .gvimrc)
    if has("gui_running")
        set guioptions-=r           " Remove the Right-hand scrollbar
        set guioptions-=L           " Remove the Left-hand scrollbar
        set guioptions-=T           " Remove the toolbar
        set guioptions-=m           " Remove the menu
        set lines=40                " 40 lines of text instead of 24
        set columns=90              " width of the display
        set winaltkeys=no ""no", "yes" or "menu"; how to use the ALT key


        if LINUX()
          " set guifont=Consolas\ Regular\ 12,Andale\ Mono\ Regular\ 12,Menlo\ Regular\ 11,Courier\ New\ Regular\ 14
        elseif OSX()
          set guifont=Consolas\ Regular:h12,Andale\ Mono\ Regular:h12,Menlo\ Regular:h11,Courier\ New\ Regular:h14
        elseif WINDOWS()
          set guifont=Consolas:h12,Andale_Mono:h12,Menlo:h12,Courier_New:h12
          autocmd GUIEnter * simalt~x "maximize window
        endif
    else
        if &term == 'xterm' || &term == 'screen'
            set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
        endif
        "set term=builtin_ansi       " Make arrow and other keys work
    endif

"}}}


