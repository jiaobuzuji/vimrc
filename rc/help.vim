" Vim " Help:Welcome screen, leader guide
" Author:   jiaobuzuji,jiaobuzuji@163.com
" Github:   https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

Plug 'hecal3/vim-leader-guide' " {1
  nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>

Plug 'mhinz/vim-startify' " {1
  let g:startify_session_dir = $VIMFILES .'/sessions'
  let g:startify_list_order = [
              \ 'commands',
              \ ['   These are my sessions:'],
              \ 'sessions',
              \ ['   My most recently used files in the current directory:'],
              \ 'dir',
              \ ['   My most recently used files (Mru) :'],
              \ 'files',
              \ ]
  let g:startify_change_to_dir = 1
  let g:startify_files_number = 5 
  let g:startify_change_to_vcs_root = 0
  let g:startify_session_sort = 1
  let g:startify_custom_header = []
  let g:startify_session_persistence = 1

  " let g:startify_commands = [
  "             \ {'o': [g:vinux_version, 'call te#utils#open_url("https://github.com/tracyone/vinux")']},
  "             \ {'v': ['Open vimrc', 'call feedkeys("\<Space>vc")']},
  "             \ ]

  " Open startify windows
  nnoremap <Leader>bh :Startify<cr>
  " autocmd misc_group FileType startify setlocal buftype=nofile
  " Session save 
  nnoremap <Leader>ss :SSave<cr>
  " Session load
  nnoremap <Leader>sl :SLoad 
  " Session delete
  nnoremap <Leader>sd :SDelete<cr>
