" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}


"-----------------------------------------------------------------------------
" colorscheme config
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=0 " disable italic

let g:PaperColor_Theme_Options = {
\   'theme': {
\     'default.dark': {
\       'override' : {
\         'color00' : ['#080808', '232'],
\         'linenumber_bg' : ['#080808', '232']
\       }
\     }
\   }
\ }

" let g:jellybeans_overrides = {
" \ 'background': { 'guibg': '000000' },
" \ 'StatusLine': {'guibg': '282828', 'guifg': 'c7c7c7', 'ctermbg': '235', 'ctermfg': '255'},
" \ 'StatusLineNC': {'guibg': '3a3a3a', 'guifg': '808080', 'ctermbg': '236', 'ctermfg': '244'},
" \}
" let g:jellybeans_use_term_italics = 1


" let g:ayucolor="dark"   " dart, mirage, light


"-----------------------------------------------------------------------------
packadd lightline.vim "{1
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


" "-----------------------------------------------------------------------------
" vim-airline "{1
" powerline font: https://github.com/Magnetic2014/YaHei-Consolas-Hybrid-For-Powerline
" packadd vim-airline
" packadd vim-airline-themes

" let g:airline_extensions = []
" let g:airline_extensions = ['tabline', 'tagbar']
" call add(g:airline_extensions, 'branch')
" " if g:fuzzysearcher_plugin_name.cur_val ==# 'fzf'
" "     call add(g:airline_extensions, 'fzf')
" " endif
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#buffer_nr_show = 0
" let g:airline#extensions#tabline#fnametruncate = 16
" let g:airline#extensions#tabline#fnamecollapse = 2
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#fnamemod = ':p:t'
" let g:airline#extensions#hunks#enabled = 0

" let g:airline_detect_modified=1
" let g:airline_detect_paste=1
" let g:airline_detect_crypt=1
" let g:airline#extensions#tagbar#enabled = 1
" let g:airline#extensions#tagbar#flags = 'f'
" let g:airline#extensions#whitespace#enabled = 0
" let g:airline#extensions#ycm#enabled = 0
" let g:airline#extensions#ctrlp#show_adjacent_modes = 0
" let g:airline_highlighting_cache = 1
" let g:airline#extensions#tabline#show_tab_type = 0


" " if !exists('g:airline_symbols')
" "   let g:airline_symbols = {}
" " endif

" " let g:airline_symbols.branch = '⎇'
" " let g:airline_symbols.maxlinenr = '☰'
" " let g:airline_symbols.linenr = '¶'
" " let g:airline_symbols.paste = 'ρ'
" " let g:airline_symbols.spell = 'Ꞩ'
" " let g:airline_symbols.notexists = '∄'
" " let g:airline_symbols.whitespace = 'Ξ'
" " let g:airline_symbols.crypt = '🔒'
" set noshowmode

" " function! Airline_setting()
" "     if te#env#SupportAsync()
" "         let g:airline_section_error = airline#section#create_right(['%{neomakemp#run_status()}'])
" "     endif
" "     let g:airline_section_warning='%{strftime("%m/%d\-%H:%M")}'
" "     if g:colors_name ==# 'PaperColor'
" "         :AirlineTheme gruvbox
" "     elseif g:colors_name ==# 'space-vim-dark'
" "         :AirlineTheme violet
" "     endif
" "   let g:airline#extensions#disable_rtp_load = 1
" "   if g:git_plugin_name.cur_val ==# 'gina.vim' && get(g:, 'feat_enable_git')
" "       let g:airline_section_b = airline#section#create_left([g:airline_symbols.branch.' '.gina#component#repo#branch()])
" "   endif
" " endfunction
" " "https://github.com/vim-airline/vim-airline/issues/399
" autocmd misc_group BufDelete * call airline#extensions#tabline#buflist#invalidate()

" "-----------------------------------------------------------------------------
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



