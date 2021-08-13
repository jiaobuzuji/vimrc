" colorscheme
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" call dein#add(g:host.'sjl/badwolf')
" call dein#add(g:host.'tomasr/molokai')
" call dein#add(g:host.'KabbAmine/yowish.vim')
" call dein#add(g:host.'joshdick/onedark.vim')
" call dein#add(g:host.'altercation/vim-colors-solarized')

call dein#add(g:host.'morhetz/gruvbox')
let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_italic=1

call dein#add(g:host.'NLKNguyen/papercolor-theme')
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

" call dein#add(g:host.'nanotech/jellybeans.vim')
" let g:jellybeans_overrides = {
" \ 'background': { 'guibg': '000000' },
" \ 'StatusLine': {'guibg': '282828', 'guifg': 'c7c7c7', 'ctermbg': '235', 'ctermfg': '255'},
" \ 'StatusLineNC': {'guibg': '3a3a3a', 'guifg': '808080', 'ctermbg': '236', 'ctermfg': '244'},
" \}
" let g:jellybeans_use_term_italics = 1
" 
" call dein#add(g:host. 'ayu-theme/ayu-vim')
" let g:ayucolor="dark"   " dart, mirage, light

