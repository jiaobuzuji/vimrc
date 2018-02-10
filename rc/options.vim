" Vim options setting
" Author    jiaobuzuji,jiaobuzuji@163.com
" Github    https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

"  2 moving around, searching and patterns {1
set whichwrap=b,h,l,<,>,[,]  " list of flags specifying which commands wrap to another line
set ignorecase  "ignore case when using a search pattern
set smartcase  "override 'ignorecase' when pattern has upper case characters
set incsearch  "show match for partly typed search command
"set autochdir  "change to directory of file in buffer

"  3 tags {1
"  4 displaying text {1
set hlsearch "highlight all matches for the last used search pattern
" set list  "display unprintable characters by set list
set listchars=tab:\|\ ,trail:-  " Strings to use in 'list' mode and for the |:list| command
set scrolloff=5 " number of screen lines to show around the cursor
set lazyredraw  " Don't update the display while executing macros
" set number	" show the line number for each line
set relativenumber " show the relative line number for each line
set cmdheight=1  "number of lines used for the command-line
"set nowrap   "don't auto linefeed
"set linebreak "wrap long lines at a character in 'breakat'

"  5 syntax, highlighting and spelling {1
set cursorline " highlight the screen line of the cursor
" set cursorcolumn " Don't highlight the screen column of the cursor
set spell          " Spell checking on

"  6 multiple windows {1
set laststatus=2 "always show status line

" let s:seperator='  '
let s:seperator=' | '

" if get(g:,'feat_enable_basic') == 1
"     if te#env#check_requirement()
"         let s:function_name="%{exists(':TagbarToggle')?\ tagbar#currenttag('%s".s:seperator."'".",'')\ :\ ''}"
"     else
"         let s:function_name="%{Tlist_Get_Tagname_By_Line()}".s:seperator
"     endif
" else
"     let s:function_name=""
" endif

if get(g:,'feat_enable_git') == 1
    if g:git_plugin_name.cur_val ==# 'gina.vim'
        let s:git_branch="[%{gina#component#repo#branch()}]%= "
    else
        let s:git_branch="%{exists('*fugitive#statusline')?\ fugitive#statusline()\ :\ ''}%= "
    endif
else
    let s:git_branch='%= '
endif

if get(g:,'feat_enable_airline') != 1
    function! MyStatusLine(type) abort
        let l:mystatus_line='%<%t%m%r%h%w'
        if a:type == 1
            let l:mystatus_line.=s:git_branch
            " let l:mystatus_line.=s:function_name
        elseif a:type == 3
            "for win32 ctags make gvim slow...
            let l:mystatus_line.=s:git_branch
        endif
        let l:mystatus_line.="%{&ft}".s:seperator."%{(&fenc!=''?&fenc:&enc)}[%{&ff}]".s:seperator."%p%%[%l,%v]"
        " let l:mystatus_line.=s:seperator."%{strftime(\"%m/%d\-\%H:%M\")} "
        if exists('*neomakemp#run_status') && neomakemp#run_status() !=# ''
            let l:mystatus_line.=s:seperator.neomakemp#run_status().' '
        endif
        return l:mystatus_line
    endfunction
    if te#env#IsWindows()
        set statusline=%!MyStatusLine(3)
    else
        set statusline=%!MyStatusLine(1)
    endif
endif

"  7 multiple tab pages {1
set showtabline=1 " 0, 1 or 2; when to use a tab pages line
set tabpagemax=15 "maximum number of tab pages to open for -p and "tab all"
set winminheight=0              " Windows can be 0 line high
set guitablabel=%N\ %t%m  "do not show dir in tab

"  8 terminal {1
"  9 using the mouse {1
set mouse=a "list of menu_flags for using the mouse,support all

" 10 GUI {1
" 11 printing {1
set printfont=Yahei_Mono:h10:cGB2312  "name of the font to be used for :hardcopy

" 12 messages and info {1
set noerrorbells
if te#env#IsVim8()
  set belloff=all
endif
set report=0  "Threshold for reporting number of lines changed
set helplang=en,cn
set confirm  "start a dialog when a command fails
"set ruler  "show cursor position below each window
"set rulerformat=%30(%=\:b%n%y\[%{&fenc}\|%{&ff}\]%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
set showcmd "show (partial) command keys in the status line
set showmode "display the current mode in the status line
set shortmess=filnxtToOI
set more "pause listings when the screen is full

" 13 selecting text {1 {{{1
set clipboard=unnamed,unnamedplus "autoselect" to always put selected text on the clipboardset
set selection=inclusive  ""old", "inclusive" or "exclusive"; how selecting text behaves

" 14 editing text {1
set showmatch "when inserting a bracket, briefly jump to its match
set matchtime=2  
set textwidth=80
set backspace=indent,eol,start  "specifies what <BS>, CTRL-W, etc. can do in Insert mode

" 15 tabs and indenting {1
set smartindent "do clever autoindenting
set cindent  "enable specific indenting for C code
set tabstop=2  "number of spaces a <Tab> in the text stands for
set shiftwidth=2 "number of spaces used for each step of (auto)indent
set softtabstop=2  "if non-zero, number of spaces to insert for a <Tab>
set expandtab
set smarttab "a <Tab> in an indent inserts 'shiftwidth' spaces

" 16 folding {1
set nofoldenable            " enable folding
set foldmethod=syntax "folding type: "manual", "indent", "expr", "marker" or "syntax"
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
" set foldcolumn=1 "width of the column used to indicate folds

function! MyFoldText() abort
    let l:line = getline(v:foldstart)
    let l:comment_content=''
    if match( l:line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0
        let l:initial = substitute( l:line, '^\([ \t]\)*\(\/\*\|\/\/\)\(.*\)', '\1\2', '' )
        let l:linenum = v:foldstart + 1
        while l:linenum < v:foldend
            let l:line = getline( l:linenum )
            let l:comment_content = substitute( l:line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
            if l:comment_content !=? ''
                break
            endif
            let l:linenum = l:linenum + 1
        endwhile
        let l:sub = l:initial . ' ' . l:comment_content
    else
        let l:sub = l:line
        let l:startbrace = substitute( l:line, '^.*{[ \t]*$', '{', 'g')
        if l:startbrace ==? '{'
            let l:line = getline(v:foldend)
            let l:endbrace = substitute( l:line, '^[ \t]*}\(.*\)$', '}', 'g')
            if l:endbrace ==? '}'
                let l:sub = l:sub.substitute( l:line, '^[ \t]*}\(.*\)$', '...}\1', 'g')
            endif
        endif
    endif
    let l:n = v:foldend - v:foldstart + 1
    let l:info = ' ' . l:n . ' lines'
    let l:sub = l:sub . '                                                                                                                  '
    let l:num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
    let l:fold_w = getwinvar( 0, '&foldcolumn' )
    let l:sub = strpart( l:sub, 0, winwidth(0) - strlen( l:info ) - l:num_w - l:fold_w - 1 )
    return l:sub . l:info
endfunction
set foldtext=MyFoldText()

" 17 diff mode {1
set diffopt=vertical

" 18 mapping {1
" 19 reading and writing files {1
set modeline
" set autoread   "autoread when a file is changed from the outside
set fileformats=unix,dos,mac

" 20 the swap file {1
" 21 command line editing {1
" set history=50  " keep 50 lines of command line history
set wildmenu
set wildmode=longest,full
set wildignore=*.swp,*.bak
set wildignore+=*.min.*,*.css.map
set wildignore+=*.jpg,*.png,*.gif
set wildignorecase

" 22 executing external commands {1
" 23 running make and jumping to errors {1
" 24 system specific {1
" 25 language specific {1
" 26 multi-byte characters {1
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
" set fileencodings=ucs-bom,utf-8,gb2312,gb1830,cp936,ansi,utf-16le,cp1252,iso-8859-15,big5,euc-jp,euc-kr,gbk
set fileencodings=ucs-bom,utf-8,cp936,gb1830,big5,euc-jp,euc-kr,gbk
if v:lang=~? '^\(zh\)\|\(ja\)\|\(ko\)'
  set ambiwidth=double
endif

" 27 various {1
set sessionoptions-=folds
set sessionoptions-=options
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=block         " Use virtual editing in <C-v>  (block select)

" if te#env#IsVim8()
"     let g:t_number=v:t_number
"     let g:t_string=v:t_string
"     let g:t_func=v:t_func
"     let g:t_list=v:t_list
"     let g:t_dict=v:t_dict
"     let g:t_float=v:t_float
"     let g:t_bool=v:t_bool
"     let g:t_none=v:t_none
"     let g:t_job=v:t_job
"     let g:t_channel=v:t_channel
"     if te#env#SupportTerminal()
"         set termkey=<s-n>
"     endif
" else
"     let g:t_number=0
"     let g:t_string=1
"     let g:t_func=2
"     let g:t_list=3
"     let g:t_dict=4
"     let g:t_float=5
"     let g:t_bool=6
"     let g:t_none=7
"     let g:t_job=8
"     let g:t_channel=9
" endif

" if te#env#IsVim8()
"     if empty($TMUX)
"       let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"       let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"       let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"     else
"       let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"       let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"       let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
"     endif
" endif
