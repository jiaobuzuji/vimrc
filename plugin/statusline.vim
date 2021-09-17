" statusline + tabline
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

"-----------------------------------------------------------------------------
" vim-airline "{1
" powerline font: https://github.com/Magnetic2014/YaHei-Consolas-Hybrid-For-Powerline
" Plug g:host.'vim-airline/vim-airline'
" Plug g:host.'vim-airline/vim-airline-themes'

"-----------------------------------------------------------------------------
" " built-in statusline "{1
" let s:seperator=' | '
" " if get(g:,'feat_enable_basic') == 1
" "     if te#env#check_requirement()
" "         let s:function_name="%{exists(':TagbarToggle')?\ tagbar#currenttag('%s".s:seperator."'".",'')\ :\ ''}"
" "     else
" "         let s:function_name="%{Tlist_Get_Tagname_By_Line()}".s:seperator
" "     endif
" " else
" "     let s:function_name=""
" " endif

" if get(g:,'feat_enable_git') == 1
"     if g:git_plugin_name.cur_val ==# 'gina.vim'
"         let s:git_branch="[%{gina#component#repo#branch()}]%= "
"     else
"         let s:git_branch="%{exists('*fugitive#statusline')?\ fugitive#statusline()\ :\ ''}%= "
"     endif
" else
"     let s:git_branch='%= '
" endif

" if get(g:,'feat_enable_airline') != 1
"     function! MyStatusLine(type) abort
"         let l:mystatus_line='%<%t%m%r%h%w'
"         if a:type == 1
"             let l:mystatus_line.=s:git_branch
"             " let l:mystatus_line.=s:function_name
"         elseif a:type == 3
"             "for win32 ctags make gvim slow...
"             let l:mystatus_line.=s:git_branch
"         endif
"         let l:mystatus_line.="%{&ft}".s:seperator."%{(&fenc!=''?&fenc:&enc)}[%{&ff}]".s:seperator."%p%%[%l,%v]"
"         " let l:mystatus_line.=s:seperator."%{strftime(\"%m/%d\-\%H:%M\")} "
"         if exists('*neomakemp#run_status') && neomakemp#run_status() !=# ''
"             let l:mystatus_line.=s:seperator.neomakemp#run_status().' '
"         endif
"         return l:mystatus_line
"     endfunction
"     if te#env#IsWindows()
"         set statusline=%!MyStatusLine(3)
"     else
"         set statusline=%!MyStatusLine(1)
"     endif
" endif


"-----------------------------------------------------------------------------
let g:lightline = {
\   'colorscheme':'jellybeans',
\   'active': {
\     'left': [['mode', 'paste'],['relativepath','modified']],
\     'right': [['lineinfo'], ['percent'], ['filetype']]
\   },
\   'mode_map': {
\     'n': 'N', 'i': 'I', 'R': 'R', 'v': 'V', 'V': 'VL', "\<C-v>": 'VB',
\     'c': 'C', 's': 'S', 'S': 'SL', "\<C-s>": 'SB', 't': 'T'
\   },
\ }


