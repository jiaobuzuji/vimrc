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

" Plugins
let g:loaded_matchit = 1
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let loaded_gzip = 1
let g:loaded_zipPlugin = 1
let g:loaded_vimballPlugin = 1

let g:plug_url_format='https://git::@github.com.cnpmjs.org/%s.git' " mirror
" other mirror : https://hub.fastgit.org/
call plug#begin($VIMFILES.'/bundle')
  call bundle#colorscheme#load()
  call bundle#awesome#load() " miscellaneous lifechange
  call bundle#fuzzyfinder#load()
  " call bundle#vimlsp#load() " lsp snippet (node)
  " call bundle#ycm#load() " YouCompleteMe (python3)
  call bundle#coc#load() " neoclide coc.nvim, lsp snippet (node)
call plug#end() " All of your Plugins must be added before the following line

filetype plugin indent on
syntax on

