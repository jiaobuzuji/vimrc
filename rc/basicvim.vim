" Vim basic setting
" Author    jiaobuzuji,jiaobuzuji@163.com
" Github    https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

syntax on
" scriptencoding utf-8
 
if te#env#IsWindows()
  language messages en_US.UTF-8
else 
  language en_US.UTF-8
  " language time en_US.utf-8
  " language ctype en_US.utf-8
endif

source $VIMRUNTIME/delmenu.vim
set pyxversion=3

