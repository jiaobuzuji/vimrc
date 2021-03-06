" Vimrc
" Author:   jiaobuzuji,jiaobuzuji@163.com
" Github:   https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
let $MYVIMRC=fnamemodify(expand('<sfile>'), ":p") " | echom expand('<sfile>')
let $VIMFILES=fnamemodify(expand('<sfile>'), ":p:h")
" set runtimepath^=$VIMFILES " Source vimrc at anywhere
" set runtimepath+=$VIMFILES/after

" source basic configuration
source $VIMFILES/rc/basicvim.vim
source $VIMFILES/rc/autocmd.vim | let g:plugins_lazyload_list = []
source $VIMFILES/rc/options.vim
source $VIMFILES/rc/mappings.vim

" source plugins
call plug#begin($VIMFILES.'/bundle') " 'junegunn/vim-plug'
  source $VIMFILES/rc/gui.vim
  source $VIMFILES/rc/basic.vim
  source $VIMFILES/rc/git.vim
  source $VIMFILES/rc/jump.vim
  source $VIMFILES/rc/help.vim
  source $VIMFILES/rc/edit.vim
  source $VIMFILES/rc/complete.vim
  source $VIMFILES/rc/markdown.vim
  " source $VIMFILES/rc/writing.vim
  source $VIMFILES/rc/airline.vim
  source $VIMFILES/rc/tools.vim
call plug#end() " All of your Plugins must be added before the following line

filetype plugin indent on

" end of config
colorscheme desert
" colorscheme ayu
" colorscheme molokai
