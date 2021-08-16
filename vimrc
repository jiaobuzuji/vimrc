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
let g:host = 'https://github.com.cnpmjs.org/' " mirror
set runtimepath+=$VIMFILES/bundle/repos/github.com.cnpmjs.org/Shougo/dein.vim
call dein#begin($VIMFILES.'/bundle')
  call dein#add(g:host.'Shougo/dein.vim',{'rtp':''})
  source $VIMFILES/bundle/colorscheme.vim
  " source $VIMFILES/bundle/statusline.vim
  source $VIMFILES/bundle/awesome.vim " miscellaneous lifechange
  " source $VIMFILES/bundle/git.vim
  " source $VIMFILES/bundle/jump.vim
  " source $VIMFILES/bundle/help.vim
  " source $VIMFILES/bundle/edit.vim
  " source $VIMFILES/bundle/complete.vim " snippet lsp
  " source $VIMFILES/bundle/markdown.vim
  " source $VIMFILES/bundle/writing.vim
  " source $VIMFILES/bundle/tools.vim
call dein#end() " All of your Plugins must be added before the following line

filetype plugin indent on
syntax on

" I like highlighting strings inside C comments. TODO
" Revert with ":unlet c_comment_strings".
let c_comment_strings=1

