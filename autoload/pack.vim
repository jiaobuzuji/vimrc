" colorscheme
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

function! pack#PackInit() abort
  let s:host = 'https://github.com.cnpmjs.org/' " mirror
  packadd minpac

  call minpac#init()
  call minpac#add(s:host.'k-takata/minpac', {'type':'opt'})
  " call minpac#add(s:host.'junegunn/vim-plug', {'type':'opt'}) " vim-plug doc

  " Colorscheme {1
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
  " call minpac#add(s:host.'vim-airline/vim-airline', {'type':'opt'})
  " call minpac#add(s:host.'vim-airline/vim-airline-themes', {'type':'opt'})
  call minpac#add(s:host.'itchyny/lightline.vim', {'type':'opt'})

  " Awesome : miscellaneous lifechange {1
  call minpac#add(s:host.'yianwillis/vimcdoc', {'type':'opt'})
  call minpac#add(s:host.'mhinz/vim-startify', {'type':'opt'})
  call minpac#add(s:host.'preservim/nerdcommenter', {'type':'opt'})
  call minpac#add(s:host.'mbbill/undotree', {'type':'opt'})
  call minpac#add(s:host.'tpope/vim-surround', {'type':'opt'})
  " call minpac#add(s:host.'junegunn/vim-easy-align', {'type':'opt'})
  " call minpac#add(s:host.'preservim/nerdtree', {'type':'opt'})
  " call minpac#add(s:host.'mhinz/vim-grepper', {'type':'opt'})
  call minpac#add(s:host.'dyng/ctrlsf.vim', {'type':'opt'})
  call minpac#add(s:host.'easymotion/vim-easymotion', {'type':'opt'})
  " call minpac#add(s:host.'jiangmiao/auto-pairs', {'type':'opt'})
  " call minpac#add(s:host.'Raimondi/delimitMate', {'type':'opt'})
  " call minpac#add(s:host.'luochen1990/rainbow', {'type':'opt'})
  " call minpac#add(s:host.'hecal3/vim-leader-guide', {'type':'opt'})

  " FuzzyFinder {1
  call minpac#add(s:host.'junegunn/fzf', {'type':'opt'}) " {'dir':'~/.fzf','do':'./install --all'}
  call minpac#add(s:host.'junegunn/fzf.vim', {'type':'opt'})
  call minpac#add(s:host.'tracyone/fzf-funky', {'type':'opt'})
  " call minpac#add(s:host.'Yggdroot/LeaderF', {'type':'opt'}))
  " call minpac#add(s:host.'Yggdroot/LeaderF-marks', {'type':'opt'})

  " Complete : snippet lsp {1
  call minpac#add(s:host.'neoclide/coc.nvim', {'type':'opt','branch':'release'})
  " if has('win64')
  "     call minpac#add(s:host.'snakeleon/YouCompleteMe-x64', {'as': 'YouCompleteMe' }
  " elseif has('win32')
  "     call minpac#add(s:host.'snakeleon/YouCompleteMe-x86', {'as': 'YouCompleteMe' }
  " else
  "     call minpac#add(s:host.'ycm-core/YouCompleteMe' " , {'commit': '85c11d3a875b02a7ac28fb96d0c7a02782f60410' }
  " endif

endfunction

" " Plugins
" let g:host = 'https://github.com.cnpmjs.org/' " mirror
" call plug#begin($VIMFILES.'/bundle')
"   " Plug g:host.'junegunn/vim-plug' " vim-plug doc
"   source $VIMFILES/plugcfg/colorscheme.vim
"   source $VIMFILES/plugcfg/awesome.vim " miscellaneous lifechange
"   source $VIMFILES/plugcfg/fuzzyfinder.vim
"   source $VIMFILES/plugcfg/complete.vim " snippet lsp
"   " source $VIMFILES/plugcfg/git.vim
"   " source $VIMFILES/plugcfg/help.vim
"   " source $VIMFILES/plugcfg/edit.vim
"   " source $VIMFILES/plugcfg/markdown.vim
"   " source $VIMFILES/plugcfg/writing.vim
"   " source $VIMFILES/plugcfg/tools.vim
" call plug#end() " All of your Plugins must be added before the following line


