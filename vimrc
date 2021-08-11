" Vimrc
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
" Date:   2021 Aug 11
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
let $VIMFILES=fnamemodify(expand('<sfile>'), ":p:h")
" set runtimepath^=$VIMFILES " Source vimrc at anywhere
" set runtimepath+=$VIMFILES/after

" source basic configuration
source $VIMFILES/rc/autocmd.vim | let g:plugins_lazyload_list = []

" Plugins
let g:host = 'https://github.com.cnpmjs.org/' " mirror
call plug#begin($VIMFILES.'/bundle') " 'junegunn/vim-plug'
  " source $VIMFILES/rc/gui.vim
  " source $VIMFILES/rc/basic.vim
  " source $VIMFILES/rc/git.vim
  " source $VIMFILES/rc/jump.vim
  " source $VIMFILES/rc/help.vim
  " source $VIMFILES/rc/edit.vim
  " source $VIMFILES/rc/complete.vim
  " source $VIMFILES/rc/markdown.vim
  " " source $VIMFILES/rc/writing.vim
  " source $VIMFILES/rc/airline.vim
  " source $VIMFILES/rc/tools.vim
call plug#end() " All of your Plugins must be added before the following line
filetype plugin indent on
syntax on

