" Awesome Plugins
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

call dein#add(g:host.'mhinz/vim-startify') " {1
let g:startify_session_dir = $VIMFILES .'/sessions'
" let g:startify_list_order = [
"             \ 'commands',
"             \ ['   These are my sessions:'],
"             \ 'sessions',
"             \ ['   My most recently used files in the current directory:'],
"             \ 'dir',
"             \ ['   My most recently used files (Mru) :'],
"             \ 'files',
"             \ ]
let g:startify_change_to_dir = 1
let g:startify_files_number = 5 
let g:startify_change_to_vcs_root = 0
let g:startify_session_sort = 1
let g:startify_custom_header = []
let g:startify_session_persistence = 1
nnoremap <Leader>sl :Startify<cr>
nnoremap <Leader>ss :SSave<cr>
nnoremap <Leader>sd :SDelete<cr>


call dein#add(g:host.'preservim/nerdtree') " {1 TODO
" { 'on': ['NERDTreeToggle','NERDTreeFind'] } " {1
let g:NERDTreeShowLineNumbers=1 "show line number
let g:NERDTreeWinPos='left' "show nerdtree in the rigth side
let g:NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let g:NERDTreeWinSize='30'
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeMouseMode=2
nnoremap <leader>te :NERDTreeToggle .<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nq :let g:NERDTreeQuitOnOpen = g:NERDTreeQuitOnOpen ? 0 : 1<cr>

call dein#add(g:host.'preservim/nerdcommenter') " {1
let g:NERDSpaceDelims=1
let g:NERDMenuMode=1

" Plug 'hecal3/vim-leader-guide' " {1
"   nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
" 
" Plug 'majutsushi/tagbar' " {1
"   let g:tagbar_left=0
"   let g:tagbar_width=30
"   let g:tagbar_sort=0
"   let g:tagbar_autofocus = 1
"   let g:tagbar_compact = 1
"   let g:tagbar_systemenc='cp936'
"   let g:tagbar_iconchars = ['+', '-']
"   let Tlist_Show_One_File = 1
"   let Tlist_Use_Right_Window = 1
"   let Tlist_GainFocus_On_ToggleOpen=1
"   " Open tagbar
"   nnoremap <silent><F9> :TagbarToggle<CR>
"   nnoremap <leader>tt :TagbarToggle<CR>
" 
" Plug 'tracyone/mark.vim' " {1
"   "remove mapping of * and # in mark.vim
"   nmap <Plug>IgnoreMarkSearchNext <Plug>MarkSearchNext
"   nmap <Plug>IgnoreMarkSearchPrev <Plug>MarkSearchPrev
"   nmap <leader>mm <Plug>MarkSet
"   xmap <Leader>mm <Plug>MarkSet
"   nmap <leader>mr <Plug>MarkRegex
"   xmap <Leader>mr <Plug>MarkRegex
"   nmap <leader>mn <Plug>MarkClear
"   xmap <leader>mn <Plug>MarkClear
"   nmap <leader>m? <Plug>MarkSearchAnyPrev
"   nmap <leader>m/ <Plug>MarkSearchAnyNext
" 
" Plug 'itchyny/vim-cursorword' " {1
"   " let g:cursorword = 0
" 
" Plug 'thinca/vim-quickrun',{'on': '<Plug>(quickrun)'} " {1
"   let g:quickrun_config = {
"               \   '_' : {
"               \       'outputter' : 'message',
"               \   },
"               \}
"   let g:quickrun_no_default_key_mappings = 1
"   map <F6> <Plug>(quickrun)
"   vnoremap <F6> :'<,'>QuickRun<cr>
"   " run cunrrent file
"   nmap <leader>yr <Plug>(quickrun)
"   " run selection text
"   vnoremap <leader>yr :'<,'>QuickRun<cr>
" 
" 
" Plug 'neomake/neomake', { 'commit': '459ac69da3eb00850eb3efefe31b3fb237d7926d'} " {1
"   nnoremap <Leader>sc :Neomake<cr>
"   "let g:neomake_open_list=2
"   if !te#env#IsGui()
"       let g:neomake_info_sign = {'text': 'i', 'texthl': 'NeomakeInfoSign'}
"       let g:neomake_warning_sign = {
"                   \ 'text': 'W',
"                   \ 'texthl': 'WarningMsg',
"                   \ }
"       let g:neomake_error_sign = {
"                   \ 'text': 'E',
"                   \ 'texthl': 'ErrorMsg',
"                   \ }
"   endif
" 
" Plug 'tracyone/neomake-multiprocess' " {1
"   "ag search c family function
"   nnoremap <leader>vf :call neomakemp#global_search(expand("<cword>") . "\\s*\\([^()]*\\)\\s*[^;]")<cr>
"   "set grepprg=ag\ --nogroup\ --nocolor
"   "set grepformat=%f:%l:%c%m
"   " let g:neomakemp_grep_command="rg"
"   " set grepprg=rg\ -H\ --no-heading\ --vimgrep\ $*
"   " set grepformat=%f:%l:%c:%m
" 
" Plug 'dkprice/vim-easygrep' " {1
"   " Search tools
"   set grepprg=rg\ -H\ --no-heading\ --vimgrep\ $*
"   let g:EasyGrepCommand="rg"
"   set grepformat=%f:%l:%c:%m

"   " let g:EasyGrepCommand="ag"
"   " let g:EasyGrepCommand=1 | let g:EasyGrepPerlStyle=1 | set grepprg=grep\ -n\ $*\ /dev/null

"   " let g:EasyGrepRoot = "search:.git,.svn,.hg" " FIXME may involve some mistake (windows error; linux twice search)
"   let g:EasyGrepFilesToExclude=".git,.svn,.hg,*.swp,*.~"
"   let g:EasyGrepRecursive=1
"   let g:EasyGrepJumpToMatch=0
"   " let g:EasyGrepMode=2 " FIXME incompatible 'ag' and 'rg' tools
"   let g:EasyGrepMode=0
"   let g:EasyGrepIgnoreCase=0
"   let g:EasyGrepReplaceWindowMode=2

"   function s:search_in_opened_buffer()
"     let g:EasyGrepMode=1
"     execute 'normal '."\<plug>EgMapGrepCurrentWord_v"
"     let g:EasyGrepMode=0
"   endfunction
"   " map <silent> <Leader>vV <plug>EgMapGrepCurrentWord_v
"   " vmap <silent> <Leader>vV <plug>EgMapGrepSelection_v
"   " map <silent> <Leader>vv <plug>EgMapGrepCurrentWord_V
"   " vmap <silent> <Leader>vv <plug>EgMapGrepSelection_V
"   " map <silent> <Leader>vi <plug>EgMapReplaceCurrentWord_r
"   " map <silent> <Leader>vI <plug>EgMapReplaceCurrentWord_R
"   " vmap <silent> <Leader>vi <plug>EgMapReplaceSelection_r
"   " vmap <silent> <Leader>vI <plug>EgMapReplaceSelection_R
"   " map <silent> <Leader>vo <plug>EgMapGrepOptions
"   noremap <silent> <Leader>vb :call <SID>search_in_opened_buffer()<cr>
"   nnoremap  <Leader>vs :Grep 
" "}
" TODO {1
"
" if te#env#IsMac()
"     Plug 'Shougo/vimproc.vim', { 'do': 'make -f make_mac.mak' }
" elseif te#env#IsUnix()
"     Plug 'Shougo/vimproc.vim', { 'do': 'make' }
" else
"     Plug 'Shougo/vimproc.vim'
" endif
"if !te#env#SupportTerminal()
"    Plug 'Shougo/vimshell.vim',{'on':'VimShell'}
"    Plug 'tracyone/ctrlp-vimshell.vim',{'on':'VimShell'}
"endif
" Vimshell {2
" if(!te#env#SupportTerminal())
"     let g:vimshell_enable_smart_case = 1
"     let g:vimshell_editor_command='gvim'
"     let g:vimshell_prompt = '$ '
"     if te#env#IsWindows()
"         " Display user name on Windows.
"         let g:vimshell_user_prompt = '$USERNAME." : ".fnamemodify(getcwd(), ":~").
"                     \" [".b:vimshell.system_variables["status"]."]"'
"     else
"         " Display user name on Linux.
"         let g:vimshell_user_prompt = '$USER." < ".te#git#get_cur_br_name().te#git#get_status()." \> "." : ".fnamemodify(getcwd(), ":~").
"                     \" [".b:vimshell.system_variables["status"]."]"'
"     endif
"
"     "let g:vimshell_popup_command='rightbelow 10split'
"     " Initialize execute file list.
"     let g:vimshell_execute_file_list = {}
"     silent! call vimshell#set_execute_file('txt,vim,c,h,cpp,d,xml,java', 'vim')
"     let g:vimshell_execute_file_list['rb'] = 'ruby'
"     let g:vimshell_execute_file_list['pl'] = 'perl'
"     let g:vimshell_execute_file_list['py'] = 'python'
"     let g:vimshell_temporary_directory = $VIMFILES . '/.vimshell'
"     silent! call vimshell#set_execute_file('html,xhtml', 'gexe firefox')
"     let g:vimshell_split_command='tabnew'
"     augroup vimshell_group
"         autocmd!
"         au FileType vimshell :imap <buffer> <HOME> <Plug>(vimshell_move_head)
"                     \ | :imap <buffer> <c-l> <Plug>(vimshell_clear)
"                     \ | :imap <buffer> <c-k> <c-o>:stopinsert<cr>:call ctrlp#vimshell#start()<cr>
"                     \ | :imap <buffer> <up> <c-o>:stopinsert<cr>:call ctrlp#vimshell#start()<cr>
"                     \ | :imap <buffer> <c-d> <Plug>(vimshell_exit)
"                     \ | :imap <buffer> <c-j> <Plug>(vimshell_enter)
"                     \ | setlocal completefunc=vimshell#complete#omnifunc omnifunc=vimshell#complete#omnifunc
"                     \ buftype= nonu nornu
"                     \ | call vimshell#altercmd#define('g', 'git')
"                     \ | call vimshell#altercmd#define('i', 'iexe')
"                     \ | call vimshell#altercmd#define('ls', 'ls --color=auto')
"                     \ | call vimshell#altercmd#define('ll', 'ls -al --color=auto')
"                     \ | call vimshell#altercmd#define('l', 'ls -al --color=auto')
"                     \ | call vimshell#altercmd#define('gtab', 'gvim --remote-tab')
"                     \ | call vimshell#altercmd#define('c', 'clear')
"         "\| call vimshell#hook#add('chpwd', 'my_chpwd', 'g:my_chpwd')
"
"         "function! g:my_chpwd(args, context)
"         "call vimshell#execute('ls')
"         "endfunction
"
"         autocmd FileType int-* call s:interactive_settings()
"     augroup END
"     function! s:interactive_settings()
"     endfunction
"     if te#env#IsWin64()
"         let g:vimproc#dll_path=$VIMRUNTIME.'/vimproc_win64.dll'
"     elseif te#env#IsWin32()
"         let g:vimproc#dll_path=$VIMRUNTIME.'/vimproc_win32.dll'
"     endif
" endif
" }

