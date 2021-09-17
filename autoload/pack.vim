" colorscheme
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! pack#PackInit() abort
  let s:host = 'https://github.com.cnpmjs.org/' " mirror
  packadd minpac

  call minpac#init()
  call minpac#add(s:host.'k-takata/minpac', {'type':'opt'})

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
  " Statusline
  " call minpac#add(s:host.'vim-airline/vim-airline')
  " call minpac#add(s:host.'vim-airline/vim-airline-themes')
  call minpac#add(s:host.'itchyny/lightline.vim')

  " Awesome
  call minpac#add(s:host.'yianwillis/vimcdoc', {'type':'opt'})
  call minpac#add(s:host.'mhinz/vim-startify')
  call minpac#add(s:host.'preservim/nerdcommenter')
  call minpac#add(s:host.'mbbill/undotree')
  call minpac#add(s:host.'tpope/vim-surround')
  " call minpac#add(s:host.'mhinz/vim-grepper')
  call minpac#add(s:host.'dyng/ctrlsf.vim')
  call minpac#add(s:host.'easymotion/vim-easymotion')
  " call minpac#add(s:host.'jiangmiao/auto-pairs')
  " call minpac#add(s:host.'luochen1990/rainbow')
  " call minpac#add(s:host.'hecal3/vim-leader-guide')

endfunction

