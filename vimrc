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
let g:plug_url_format='https://git::@github.com.cnpmjs.org/%s.git' " mirror
call plug#begin($VIMFILES.'/bundle')
  " Plug g:host.'junegunn/vim-plug' " vim-plug doc
  source $VIMFILES/plugcfg/colorscheme.vim
  source $VIMFILES/plugcfg/awesome.vim " miscellaneous lifechange
  source $VIMFILES/plugcfg/fuzzyfinder.vim
  source $VIMFILES/plugcfg/complete.vim " snippet lsp
  " source $VIMFILES/plugcfg/git.vim
  " source $VIMFILES/plugcfg/help.vim
  " source $VIMFILES/plugcfg/edit.vim
  " source $VIMFILES/plugcfg/markdown.vim
  " source $VIMFILES/plugcfg/writing.vim
  " source $VIMFILES/plugcfg/tools.vim
call plug#end() " All of your Plugins must be added before the following line

filetype plugin indent on
syntax on

