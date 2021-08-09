" Vim basic plugins
" Author:   jiaobuzuji,jiaobuzuji@163.com
" Github:   https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

"'scrooloose/nerdtree' {1
  let g:NERDTreeShowLineNumbers=1	"show line number
  let g:NERDTreeWinPos='left'	"show nerdtree in the rigth side
  let g:NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
  let g:NERDTreeWinSize='30'
  let g:NERDTreeShowBookmarks=1
  let g:NERDTreeChDirMode=2
  let g:NERDTreeQuitOnOpen=1
  let g:NERDTreeMouseMode=2
  " Open nerd tree
  nnoremap <F12> :NERDTreeToggle .<CR>
  nnoremap <leader>te :NERDTreeToggle .<CR>
  " Open nerd tree
  nnoremap <leader>nf :NERDTreeFind<CR>
  "map <2-LeftMouse>  *N "double click highlight the current cursor word
  inoremap <F12> <c-[>:NERDTreeToggle<CR>

  nnoremap <Leader>nq :let g:NERDTreeQuitOnOpen = g:NERDTreeQuitOnOpen ? 0 : 1<cr>

"'mbbill/undotree' {1
  nnoremap <leader>tu :UndotreeToggle<cr>
  let g:undotree_WindowLayout=2
  let g:undotree_DiffpanelHeight=8
  let g:undotree_SetFocusWhenToggle=1
  set undofile undodir=$VIMFILES/undodir/
