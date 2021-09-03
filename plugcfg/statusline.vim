" statusline + tabline
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

" vim-airline "(
" powerline font: https://github.com/Magnetic2014/YaHei-Consolas-Hybrid-For-Powerline
" Plug g:host.'vim-airline/vim-airline'
" Plug g:host.'vim-airline/vim-airline-themes'

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


Plug g:host.'itchyny/lightline.vim' "(
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

