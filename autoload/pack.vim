" colorscheme
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! pack#PackInit() abort
  let s:host = 'https://github.com.cnpmjs.org/' " mirror
  packadd minpac

  call minpac#init()
  call minpac#add(s:host.'k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  " Colorscheme
  " call minpac#add(s:host.'sjl/badwolf')
  " call minpac#add(s:host.'tomasr/molokai')
  " call minpac#add(s:host.'sickill/vim-monokai')
  " call minpac#add(s:host.'KabbAmine/yowish.vim')
  " call minpac#add(s:host.'joshdick/onedark.vim')
  " call minpac#add(s:host.'altercation/vim-colors-solarized')
  " call minpac#add(s:host.'nanotech/jellybeans.vim')
  " call minpac#add(s:host. 'ayu-theme/ayu-vim')
  call minpac#add(s:host.'morhetz/gruvbox')
  call minpac#add(s:host.'NLKNguyen/papercolor-theme')

  " Awesome
  call minpac#add(s:host.'NLKNguyen/papercolor-theme')

endfunction

