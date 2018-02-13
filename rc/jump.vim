" Vim Jump
" Author    jiaobuzuji,jiaobuzuji@163.com
" Github    https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

" Matchit.vim {1
"extend %
runtime macros/matchit.vim "important 
let b:match_ignorecase=1
set mps+=<:>
set mps+=":"

" jump to somewhere:file,mru,bookmark
Plug 'Yggdroot/LeaderF' " {1
Plug 'Yggdroot/LeaderF-marks',{'on': 'LeaderfMarks'}
  " show global mark
  nnoremap <leader>pm :LeaderfMarks<Cr>

  "function
  nnoremap <c-k> :LeaderfFunction<cr>
  nnoremap <Leader>pk :LeaderfFunction<cr>
  " buffer 
  nnoremap <Leader>pb :LeaderfBuffer<Cr>
  " recent file 
  nnoremap <c-l> :LeaderfMru<cr>
  nnoremap <Leader>pr :LeaderfMru<cr>
  "file
  nnoremap <Leader>pp :LeaderfFile<cr>
  "leaderf cmd
  nnoremap <Leader>ps :LeaderfSelf<cr>
  nnoremap <Leader>pt :LeaderfBufTag<cr>
  "colorsceme
  nnoremap <Leader>pc :LeaderfColorscheme<cr>
  "CtrlP cmd
  let g:Lf_ShortcutF = '<C-P>'
  let g:Lf_ShortcutB = '<C-j>'
  let g:Lf_CacheDiretory=$VIMFILES
  let g:Lf_DefaultMode='FullPath'
  let g:Lf_StlColorscheme = 'default'
  let g:Lf_StlSeparator = { 'left': '', 'right': '' }
  let g:Lf_UseMemoryCache = 0
  nnoremap <Leader><Leader> :LeaderfFile<cr>

" Plug 'ctrlpvim/ctrlp.vim' " {1
" Plug 'tacahiroy/ctrlp-funky',{'on': 'CtrlPFunky'}
" Plug 'fisadev/vim-ctrlp-cmdpalette',{'on': 'CtrlPCmdPalette'}
" Plug 'zeero/vim-ctrlp-help',{'on': 'CtrlPHelp'}
" "ctrlp thirdparty matchers
" Plug 'FelikZ/ctrlp-py-matcher'
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
"   " Set Ctrl-P to show match at top of list instead of at bottom, which is so
"   " stupid that it's not default
"   let g:ctrlp_match_window_reversed = 0
"   let g:ctrlp_max_files = 70000
"   let g:ctrlp_search_hidden=""

"   " Tell Ctrl-P to keep the current VIM working directory when starting a
"   " search, another really stupid non default
"   let g:ctrlp_working_path_mode = 'w'

"   let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:20'
"   " Ctrl-P ignore target dirs so VIM doesn't have to! Yay!
"   let g:ctrlp_custom_ignore = {
"               \ 'dir': '\v[\/]\.(git|svn|hg|build|sass-cache)$',
"               \ 'file': '\v\.(exe|so|dll|o|d|proj|out)$',
"               \ }
"   let g:ctrlp_extensions = ['tag', 'buffertag', 'dir', 'bookmarkdir']

"   let g:ctrlp_use_caching = 50000
"   " let g:ctrlp_use_caching = 0
"   " let g:ctrlp_use_caching = 1

"   function! s:update_ctrlp_command() abort
"       if executable('rg')
"           let g:ctrlp_user_command = 'rg '.g:ctrlp_search_hidden.' %s --files --color=never --glob "!.git"'
"       elseif executable('ag')
"           "NOTE: --ignore option use wildcard PATTERN instead of regex PATTERN,and
"           "it does not support {}
"           "--hidden:enable seach hidden dirs and files
"           "-g <regex PATTERN>:search file name that match the PATTERN
"           let g:ctrlp_user_command = 'ag '.g:ctrlp_search_hidden.' %s -l --nocolor --nogroup 
"                       \ --ignore "*.[odODaA]"
"                       \ --ignore "*.exe"
"                       \ --ignore "*.out"
"                       \ --ignore "*.hex"
"                       \ --ignore "cscope*"
"                       \ --ignore "*.so"
"                       \ --ignore "*.dll"
"                       \ --ignore ".git"
"                       \ -g ""'
"       else
"           if te#env#IsUnix()
"               let g:ctrlp_user_command = {
"                           \ 'types': {
"                           \ 1: ['.git', 'cd %s && git ls-files -oc --exclude-standard'],
"                           \ 2: ['.hg', 'hg --cwd %s status -numac -I . $(hg root)'],
"                           \ },
"                           \ 'fallback': 'find %s -type f'
"                           \ }
"           else
"               let g:ctrlp_user_command = {
"                           \ 'types': {
"                           \ 1: ['.git', 'cd %s && git ls-files -oc --exclude-standard'],
"                           \ 2: ['.hg', 'hg --cwd %s status -numac -I . $(hg root)'],
"                           \ },
"                           \ 'fallback': 'dir %s /-n /b /s /a-d'
"                           \ }
"           endif
"       endif
"   endfunction
"   call s:update_ctrlp_command()

"   let g:user_command_async = 1
"   let g:ctrlp_show_hidden = 1
"   let g:ctrlp_funky_syntax_highlight = 0
"   let g:ctrlp_funky_matchtype = 'path'

"   "handle bug of gitgutter
"   function! s:ctrlp_funky()
"       let g:gitgutter_async=0
"       :CtrlPFunky
"       let g:gitgutter_async=1
"   endfunction
"   nnoremap <c-k> :call <SID>ctrlp_funky()<cr>
"   nnoremap <c-j> :CtrlPBuffer<Cr>

"   function! s:toggle_ctrlp_search_hidden() abort
"     if g:ctrlp_search_hidden ==# ""
"       let g:ctrlp_search_hidden = "--hidden"
"     else
"       let g:ctrlp_search_hidden = ""
"     endif
"   endfunction
"   nnoremap <leader>ti :call <SID>toggle_ctrlp_search_hidden()<cr>:call <SID>update_ctrlp_command()<cr>
"   " show global mark
"   nnoremap <leader>pm :SignatureListGlobalMarks<Cr>
"   " ctrlp buffer 
"   nnoremap <Leader>pb :CtrlPBuffer<Cr>
"   nnoremap <c-l> :CtrlPMRUFiles<cr>
"   "CtrlP mru
"   nnoremap <Leader>pr :CtrlPMRUFiles<cr>
"   "CtrlP file
"   nnoremap <Leader>pp :CtrlP<cr>
"   " narrow the list down with a word under cursor
"   "CtrlP function 
"   nnoremap <Leader>pU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
"   "CtrlP colorsceme
"   "nnoremap <Leader>pc :call te#ctrlp#colorscheme#start()<cr>
"   "CtrlP function
"   nnoremap <Leader>pk :CtrlPFunky<cr>
"   "CtrlP cmd
"   nnoremap <Leader><Leader> :CtrlP<cr>
"   "spacemacs :SPC ff
"   nnoremap <Leader>ff :call te#ctrlp#dir#start()<cr>
"   " CtrlP TODO {2
"   " "CtrlP git branch
"   " nnoremap <Leader>pgb :call te#ctrlp#git#start(1)<cr>
"   " "CtrlP git show diff of specified commit
"   " nnoremap <Leader>pgl :call te#ctrlp#git#start(2)<cr>
"   " "CtrlP git log checkout
"   " nnoremap <Leader>pgc :call te#ctrlp#git#start(3)<cr>
"   " "CtrlP git remote branch
"   " nnoremap <Leader>pgr :call te#ctrlp#git#start(4)<cr>
"   "vim help
"   nnoremap <Leader>ph :CtrlPHelp<cr>

 " vim-easymotion {1
Plug 'easymotion/vim-easymotion', { 'on': [ '<Plug>(easymotion-lineforward)',
            \ '<Plug>(easymotion-linebackward)','<Plug>(easymotion-overwin-w)' ]}
  map W <Plug>(easymotion-lineforward)
  map B <Plug>(easymotion-linebackward)
  " MultiWindow easymotion for word
  nmap <Leader>jw <Plug>(easymotion-overwin-w)
  xmap <Leader>jw <Plug>(easymotion-bd-w)
  omap <Leader>jw <Plug>(easymotion-bd-w)
  " Multi Input Find Motion:s
  nmap <Leader>js <Plug>(easymotion-sn)
  xmap <Leader>js <Plug>(easymotion-sn)
  omap <Leader>js <Plug>(easymotion-sn)
  " Multi Input Find Motion:t
  nmap <Leader>jt <Plug>(easymotion-tn)
  xmap <Leader>jt <Plug>(easymotion-tn)
  omap <Leader>jt <Plug>(easymotion-tn)
  " MultiWindow easymotion for line
  nmap <Leader>jl <Plug>(easymotion-overwin-line)
  xmap <Leader>jl <Plug>(easymotion-bd-jk)
  omap <Leader>jl <Plug>(easymotion-bd-jk)
  " MultiWindow easymotion for char
  nmap <Leader>jj <Plug>(easymotion-overwin-f)
  xmap <Leader>jj <Plug>(easymotion-bd-f)
  omap <Leader>jj <Plug>(easymotion-bd-f)
  map <LocalLeader><LocalLeader> <Plug>(easymotion-prefix)

  let g:EasyMotion_startofline = 0
  let g:EasyMotion_show_prompt = 0
  let g:EasyMotion_verbose = 0

" Plug 't9md/vim-choosewin',{'on': '<Plug>(choosewin)'} " {1
"   let g:choosewin_overlay_enable = 1
"   nmap <Leader>wc <Plug>(choosewin)

Plug 'kshenoy/vim-signature' " {1
  let g:SignatureEnabledAtStartup    = 1
  let g:SignatureMarkTextHLDynamic   = 1
  let g:SignatureMarkerTextHLDynamic = 1

Plug 'MattesGroeger/vim-bookmarks', { 'on': ['BookmarkShowAll', 'BookmarkToggle', 'BookmarkAnnotate']} " {1
  let g:bookmark_auto_save = 1
  let g:bookmark_no_default_key_mappings = 1
  let g:bookmark_save_per_working_dir = 1
  let g:bookmark_sign = '>>'
  let g:bookmark_annotation_sign = '##'
  let g:bookmark_auto_close = 1
  "Bookmark annotate
  nnoremap <leader>mi :BookmarkAnnotate<CR>
  "Bookmark toggle
  nnoremap <leader>ma :BookmarkToggle<cr>
  "Bookmark annotate 
  vnoremap <leader>mi :<c-u>exec ':BookmarkAnnotate '.getline("'<")[getpos("'<")[2]-1:getpos("'>")[2]-1]<cr>
  "Bookmark clear
  nnoremap <leader>mc :BookmarkClear<cr>
  "Bookmark show all
  nnoremap <leader>mb :BookmarkShowAll<CR>

" if get(g:,'feat_enable_airline') == 0 " {1
"     Plug 'tracyone/vim-buftabline'
"     let g:buftabline_numbers=2
"     let g:buftabline_show=1
"     let g:buftabline_indicators=1
" endif

Plug 'ronakg/quickr-preview.vim', { 'for': ['qf']} " {1
  let g:quickr_preview_keymaps = 0
  autocmd filetype_group FileType qf nmap <buffer> <down> <down><plug>(quickr_preview)
  autocmd filetype_group FileType qf nmap <buffer> <up> <up><plug>(quickr_preview)
  autocmd filetype_group FileType qf nmap <buffer> <Space><Space>  <plug>(quickr_preview)

" TODO {1
" if get(g:,'feat_enable_airline') == 0
"     Plug 'tracyone/vim-buftabline'
"     let g:buftabline_numbers=2
"     let g:buftabline_show=1
"     let g:buftabline_indicators=1
" endif
" 
