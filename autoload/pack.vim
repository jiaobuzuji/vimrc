" Built-in Package Manager
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

function! pack#fresh() abort
  let s:host = 'https://github.com.cnpmjs.org/' " mirror
  packadd minpac

  call minpac#init()
  call minpac#add(s:host.'k-takata/minpac', {'type':'opt'})
  call minpac#add(s:host.'junegunn/vim-plug', {'type':'opt'}) " vim-plug doc
  call minpac#add(s:host.'yianwillis/vimcdoc', {'type':'opt'})

  call minpac#clean()
  call minpac#update()
endfunction

" Deprecated !!
" function! pack#PackInit() abort
"   let s:host = 'https://github.com.cnpmjs.org/' " mirror
"   packadd minpac

"   call minpac#init()
"   call minpac#add(s:host.'k-takata/minpac', {'type':'opt'})
"   call minpac#add(s:host.'junegunn/vim-plug', {'type':'opt'}) " vim-plug doc
"   call minpac#add(s:host.'yianwillis/vimcdoc', {'type':'opt'})
" endfunction
" command! PackUpdate source $MYVIMRC | call pack#PackInit() | call minpac#update()
" command! PackClean  source $MYVIMRC | call pack#PackInit() | call minpac#clean()
" command! PackStatus packadd minpac | call minpac#status()
