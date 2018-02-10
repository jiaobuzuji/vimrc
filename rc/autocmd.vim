" Vim autocmd
" Author    jiaobuzuji,jiaobuzuji@163.com
" Github    https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

" misc_group {1
augroup misc_group
  autocmd!
  autocmd GUIEnter * call te#tools#max_win()
  " autocmd CmdwinEnter * set ft= | noremap <buffer> q :q<cr> | nmap <buffer><silent> <cr> <Enter>
  autocmd CmdwinEnter * set ft= | noremap <buffer> q :q<cr>
  autocmd VimResized * wincmd = 
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
              \ exe "normal! g'\"" |
              \ endif "jump to last position last open in vim
augroup END

" lazy_load_group {1
augroup lazy_load_group
    autocmd!
    autocmd InsertEnter * call te#feat#vim_plug_insert_enter()
                \| autocmd! lazy_load_group
augroup END


" Jiaobuzuji {1
"   
" function! MaximizeWindow()      
"     silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz  
" endfunction  " "automatic recognition vt file as verilog

" autocmd BufRead,BufNewFile *.ucf set filetype=perl
"
" autocmd FileType verilog,VHDL setlocal tabstop=3 shiftwidth=3 softtabstop=3 foldmethod=indent
" autocmd FileType make setlocal noexpandtab
" autocmd FileType haskell,puppet,ruby,vim,yml setlocal expandtab
"
" autocmd FileType qf nnoremap <buffer> r :silent! Qfreplace<CR>
" " autocmd FileType qf nnoremap <buffer> R :silent! Qfreplace<CR>:silent! ccl<cr>
" autocmd FileType qf nnoremap <buffer> q :ccl<CR>
" autocmd FileType qfreplace nnoremap <buffer> ZZ :ccl<CR>ZZ
" autocmd FileType qf,qfreplace setlocal number
" autocmd FileType gitcommit,qfreplace setlocal nofoldenable
"
" " autocmd FileType markdown set conceallevel=2
" autocmd FileType vimwiki,markdown,text setlocal wrap colorcolumn=78


" TODO {1
" augroup filetype_group
"     autocmd!
"     autocmd BufRead,BufNewFile *.vt setlocal filetype=verilog
"     "automatic recognition bld file as javascript 
"     autocmd BufRead,BufNewFile *.bld setlocal filetype=javascript
"     "automatic recognition xdc file as javascript
"     autocmd BufRead,BufNewFile *.xdc setlocal filetype=javascript
"     autocmd BufRead,BufNewFile *.mk setlocal filetype=make
"     autocmd BufRead,BufNewFile *.make setlocal filetype=make
"     autocmd BufRead,BufNewFile *.veo setlocal filetype=verilog
"     autocmd BufRead,BufNewFile *.h setlocal filetype=c
"     autocmd BufRead,BufNewFile * let $CurBufferDir=expand('%:p:h')
"     autocmd BufRead,BufNewFile *.hex,*.out,*.o,*.a Vinarise
"     autocmd BufRead,BufNewFile *.fex setlocal filetype=dosini
" 
"     autocmd FileType qf noremap <buffer> r :<C-u>:q<cr>:silent! Qfreplace<CR> 
"                 \ | noremap <buffer> <c-x> <C-w><Enter><C-w>K
"                 \ | nnoremap <buffer> q :ccl<cr>:lcl<cr>
"                 \ | nnoremap <buffer> o <CR><C-w>p
"                 \ | nnoremap <buffer> <c-j> <CR><C-w>p
"                 \ | nnoremap <buffer> <c-t> <C-w><CR><C-w>T
"                 \ | nnoremap <buffer> <c-v> <C-w><CR><C-w>L<C-w>p<C-w>J<C-w>p
"                 \ | nnoremap <buffer> <c-o> :colder<cr>
"                 \ | nnoremap <buffer> <c-i> :cnewer<cr>
"     " quickfix window  s/v to open in split window,  ,gd/,jd => quickfix window => open it
"     autocmd FileType gitcommit,gina-status,gina-commit setlocal nofoldenable cursorline
"     autocmd FileType qfreplace,vimcalc,man setlocal nonu nornu nofoldenable | imap <buffer> <c-d> :q<cr>
"                 \ | nmap <buffer> q :bdelete<cr>
"     autocmd FileType vim-plug nnoremap <buffer> <silent> H :call te#plug#open_doc()<cr> 
"                 \ | nnoremap <buffer> <silent> gx :call te#plug#browse_plugin_url()<cr>
"                 \ | nnoremap <buffer> <silent> <c-t> :call te#plug#open_plugin_dir()<cr>
"                 \ | nnoremap <buffer> <silent> d :call te#plug#show_log()<cr>
"                 \ | call te#plug#extra_key()
" augroup END
" if te#env#IsNvim()
"     autocmd misc_group TermOpen * setlocal nonu signcolumn=no | :startinsert
"     "auto close terminal buffer
"     autocmd misc_group TermClose * exe expand('<abuf>').'bd!'
"     if exists('+winhighlight')
"       autocmd BufEnter,FocusGained,TermClose * if te#autocmds#should_colorcolumn() | set winhighlight= | endif
"       autocmd FocusLost,WinLeave * if te#autocmds#should_colorcolumn() | set winhighlight=CursorLineNr:LineNr,IncSearch:ColorColumn,Normal:ColorColumn,NormalNC:ColorColumn,SignColumn:ColorColumn | endif
"     endif
" else
"     if te#env#IsMacVim()
"         autocmd misc_group FocusGained * :redraw!
"     endif
" endif
" if get(g:, 'feat_enable_basic') && te#env#SupportAsync()
"     autocmd filetype_group BufWritePost,BufEnter *.php,*.sh,*.js Neomake
" endif
" 

