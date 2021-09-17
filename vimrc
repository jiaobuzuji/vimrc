" Vimrc
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
" Date:   2021 Aug 11
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Importance
set nocompatible
" runtimepath
" let $MYVIMRC=fnamemodify(expand('<sfile>'), ":p") " | echom expand('<sfile>')
let $VIMFILES=fnamemodify(expand('<sfile>'), ":p:h")
" set runtimepath^=$VIMFILES " Source vimrc at anywhere
" set runtimepath+=$VIMFILES/after
" leader key
let g:mapleader="\<Space>"
let g:maplocalleader=','

command! PackUpdate source $MYVIMRC | call pack#PackInit() | call minpac#update()
command! PackClean  source $MYVIMRC | call pack#PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()

filetype plugin indent on
syntax on

