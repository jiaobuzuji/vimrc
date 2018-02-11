" Vimrc
" Author    jiaobuzuji,jiaobuzuji@163.com
" Github    https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
let $MYVIMRC=fnamemodify(expand('<sfile>'), ":p") " | echom expand('<sfile>')
let $VIMFILES=fnamemodify(expand('<sfile>'), ":p:h")
" set runtimepath^=$VIMFILES " Source vimrc at anywhere
" set runtimepath+=$VIMFILES/after

" source basic configuration
source $VIMFILES/rc/basicvim.vim
source $VIMFILES/rc/autocmd.vim
source $VIMFILES/rc/options.vim
source $VIMFILES/rc/mappings.vim

" source plugins
call plug#begin($VIMFILES.'/bundle') " 'junegunn/vim-plug'
  source $VIMFILES/rc/gui.vim
  source $VIMFILES/rc/basic.vim
  source $VIMFILES/rc/jump.vim

call plug#end() " All of your Plugins must be added before the following line

" end of config
filetype plugin indent on

colorscheme desert
" colorscheme ayu
" colorscheme molokai
