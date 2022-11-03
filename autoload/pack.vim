" vim9script
" # vim:fdm=marker fmr={,}
" #=======================================================================
" # Built-in Package Manager
" # Author: jiaobuzuji@163.com
" # Github: https://github.com/jiaobuzuji
" #=======================================================================

function! pack#fresh()
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type':'opt'})
  call minpac#add('junegunn/vim-plug', {'type':'opt'})
  call minpac#add('yianwillis/vimcdoc', {'type':'opt'})
  call minpac#add('vim/killersheep', {'type':'opt'})

  call minpac#add('honza/vim-snippets', {'type':'opt'})
  call minpac#add('SirVer/ultisnips', {'type':'opt'})

  call minpac#add('vim-scripts/DrawIt', {'type':'opt'})
  call minpac#add('qpkorr/vim-renamer', {'type':'opt'})
  call minpac#add('imc-trading/svlangserver', {'type':'opt', 'do':'npm install'}) " npm install -g @imc-trading/svlangserver

  " call minpac#add('skywind3000/vim-auto-popmenu', {'type':'opt'})

  call minpac#clean()
  call minpac#update()
endfunction

