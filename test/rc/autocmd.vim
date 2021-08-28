" Vim autocmd
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

" Put these in an autocmd group, so that you can revert them with:
" ":augroup vimStartup | au! | augroup END"
augroup vimStartup
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid, when inside an event handler
  " (happens when dropping a file on gvim) and for a commit message (it's
  " likely a different one than last time).
  autocmd BufReadPost *
        \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
        \ |   exe "normal! g`\""
        \ | endif

augroup END


augroup misc_group " {1
  autocmd!
  autocmd GUIEnter * call te#tools#max_win()
  autocmd CmdwinEnter * set ft= | noremap <buffer> q :q<cr> | nmap <buffer><silent> <cr> <Enter>
  autocmd VimResized * wincmd = 
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
              \ exe "normal! g'\"" |
              \ endif "jump to last position last open in vim
augroup END

augroup filetype_group " {1
  autocmd!
  " RTL files
  autocmd BufRead,BufNewFile *.ucf,*.xdc, setlocal filetype=sdc
  autocmd FileType verilog,systemverilog setlocal foldmethod=indent

  autocmd BufRead,BufNewFile *.make,*.mk setlocal filetype=make
  autocmd BufRead,BufNewFile *.h setlocal filetype=c
  autocmd BufRead,BufNewFile * let $CurBufferDir=expand('%:p:h')
  autocmd BufRead,BufNewFile *.hex,*.out,*.o,*.a Vinarise
  autocmd BufRead,BufNewFile *.fex setlocal filetype=dosini

  " Quickfix
  " autocmd FileType qf nnoremap <buffer> R :silent! Qfreplace<CR>:silent! ccl<cr>
  autocmd FileType qf nnoremap <buffer> r :silent! Qfreplace<CR>
                  \ | nnoremap <buffer> <c-x> <C-w><Enter><C-w>K
                  \ | nnoremap <buffer> q :ccl<cr>:lcl<cr>
                  \ | nnoremap <buffer> o <CR><C-w>p
                  \ | nnoremap <buffer> <c-j> <CR><C-w>p
                  \ | nnoremap <buffer> <c-t> <C-w><CR><C-w>T
                  \ | nnoremap <buffer> <c-v> <C-w><CR><C-w>L<C-w>p<C-w>J<C-w>p
                  \ | nnoremap <buffer> <c-o> :colder<cr>
                  \ | nnoremap <buffer> <c-i> :cnewer<cr>
  autocmd FileType qfreplace nnoremap <buffer> ZZ :ccl<CR>ZZ
  autocmd FileType qf,qfreplace setlocal number nofoldenable

  " quickfix window  s/v to open in split window,  ,gd/,jd => quickfix window => open it
  autocmd FileType gitcommit,gina-status,gina-commit setlocal nofoldenable cursorline
  autocmd FileType vimcalc,man setlocal nonu nornu nofoldenable | imap <buffer> <c-d> :q<cr>
              \ | nmap <buffer> q :bdelete<cr>

  autocmd FileType markdown setlocal wrap
augroup END

augroup lazy_load_group " {1
  autocmd!
  autocmd InsertEnter * call plug#load(g:plugins_lazyload_list)
              \| autocmd! lazy_load_group
augroup END

" {1
" autocmd filetype_group BufWritePost,BufEnter *.php,*.sh,*.js Neomake
