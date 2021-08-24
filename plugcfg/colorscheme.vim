" colorscheme
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plug g:host.'sjl/badwolf'
" Plug g:host.'tomasr/molokai'
" Plug g:host.'KabbAmine/yowish.vim'
" Plug g:host.'joshdick/onedark.vim'
" Plug g:host.'altercation/vim-colors-solarized'

Plug g:host.'morhetz/gruvbox'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=0 " disable italic

Plug g:host.'NLKNguyen/papercolor-theme'
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

" Plug g:host.'nanotech/jellybeans.vim'
" let g:jellybeans_overrides = {
" \ 'background': { 'guibg': '000000' },
" \ 'StatusLine': {'guibg': '282828', 'guifg': 'c7c7c7', 'ctermbg': '235', 'ctermfg': '255'},
" \ 'StatusLineNC': {'guibg': '3a3a3a', 'guifg': '808080', 'ctermbg': '236', 'ctermfg': '244'},
" \}
" let g:jellybeans_use_term_italics = 1
" 
" Plug g:host. 'ayu-theme/ayu-vim'
" let g:ayucolor="dark"   " dart, mirage, light

