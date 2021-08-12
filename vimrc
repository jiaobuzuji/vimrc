" Vimrc
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
" Date:   2021 Aug 11
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
let $VIMFILES=fnamemodify(expand('<sfile>'), ":p:h")
" set runtimepath^=$VIMFILES " Source vimrc at anywhere
" set runtimepath+=$VIMFILES/after

" Plugins
let g:host = 'https://github.com.cnpmjs.org/' " mirror
set runtimepath+=$VIMFILES/bundle/repos/github.com.cnpmjs.org/Shougo/dein.vim
call dein#begin("$VIMFILES/bundle")
  call dein#add("$VIMFILES/bundle/repos/github.com.cnpmjs.org/Shougo/dein.vim")
  call dein#add(g:host.'nanotech/jellybeans.vim')
  " source $VIMFILES/rc/gui.vim
  " source $VIMFILES/rc/basic.vim
  " source $VIMFILES/rc/git.vim
  " source $VIMFILES/rc/jump.vim
  " source $VIMFILES/rc/help.vim
  " source $VIMFILES/rc/edit.vim
  " source $VIMFILES/rc/complete.vim
  " source $VIMFILES/rc/markdown.vim
  " source $VIMFILES/rc/writing.vim
  " source $VIMFILES/rc/airline.vim
  " source $VIMFILES/rc/tools.vim
call dein#end() " All of your Plugins must be added before the following line

filetype plugin indent on
syntax on

