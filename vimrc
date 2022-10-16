vim9script
# Author: jiaobuzuji@163.com
# Github: https://github.com/jiaobuzuji
# Date:   2021 Aug 11
# ======================================================================

# Importance
set nocompatible
# runtimepath
$MYVIMRC = fnamemodify(expand('<sfile>'), ":p")
$VIMFILES = fnamemodify(expand('<sfile>'), ":p:h")
# set runtimepath ^= $VIMFILES " Source vimrc at anywhere
# set runtimepath += $VIMFILES/after
# leader key
g:mapleader = "\<Space>"
g:maplocalleader = ','

# Subpress Plugins
g:loaded_matchit = 1
g:loaded_netrw = 1
g:loaded_netrwPlugin = 1
g:loaded_gzip = 1
g:loaded_zipPlugin = 1
g:loaded_vimballPlugin = 1

# call plug#begin($VIMFILES.'/bundle')
#   call bundle#colorscheme#load()
#   call bundle#awesome#load() " miscellaneous lifechange
#   call bundle#fuzzyfinder#load()
#   " call bundle#vimlsp#load() " lsp snippet (node)
#   " call bundle#ycm#load() " YouCompleteMe (python3)
#   call bundle#coc#load() " neoclide coc.nvim, lsp snippet (node)
# call plug#end() " All of your Plugins must be added before the following line

filetype plugin indent on
syntax on

