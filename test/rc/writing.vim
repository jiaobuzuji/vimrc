" Vim " Help:Welcome screen, leader guide
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

"wirting something...
" Plug 'junegunn/goyo.vim',{'on': 'Goyo'}
" Plug 'jceb/vim-orgmode', {'for': 'org'}
" Plug 'tpope/vim-speeddating'
Plug 'chrisbra/NrrwRgn',{'on': 'NR'}
  xnoremap <leader>nl :NR<cr>
  nnoremap <leader>nl vip:NR<cr>
  nnoremap <leader>nw :NW<cr>

" Plug 'tracyone/utl.vim', { 'on': 'Utl'}

" " toggle free writing in vim (Goyo)
" nnoremap <leader>to :Goyo<cr>
" " org open index.org
" nmap <leader>ow :call <SID>open_index_org()<cr>
" " org show todo
" nmap <leader>ot <Plug>OrgAgendaTodo
" " org change todo type
" nmap <leader>od <Plug>OrgTodoToggleInteractive
" " org inster a new date
" nmap <leader>os <Plug>OrgDateInsertTimestampInactiveCmdLine
" " org new check box
" nmap <leader>oc <Plug>OrgCheckBoxNewBelow
" " org instert new url
" nmap <leader>on <Plug>OrgHyperlinkInsert
" " org checkbox toggle
" nmap <leader>ob <Plug>OrgCheckBoxToggle
" " org checkbox update
" nmap <leader>ou <Plug>OrgCheckBoxUpdate

" let g:org_agenda_files = [$VIMFILES.'/org/*.org']
" let g:org_todo_keywords = [['TODO(t)', '|', 'DONE(d)'],
"             \ ['REPORT(r)', 'BUG(b)', 'KNOWNCAUSE(k)', '|', 'FIXED(f)'],
"             \ ['CANCELED(c)']]

" function! s:open_index_org() abort
"     let l:index_org = $VIMFILES.'/org/index.org'
"     if !filereadable(l:index_org)
"         call te#utils#EchoWarning(l:index_org.' is not exist! Try to create one.')
"         call mkdir($VIMFILES.'/org', 'p')
"         call writefile(['* Organize everything !!'], l:index_org, 'a')
"     endif
"     silent! execute 'edit! ' . l:index_org
" endfunction

" if te#env#IsGui()
"   let g:utl_cfg_hdl_scm_http = "silent !xdg-open '%u' &"
"   let g:utl_cfg_hdl_scm_mailto = "silent !x-terminal-emulator -e mutt '%u'"
"   for s:pdfviewer in ['evince', 'okular', 'kpdf', 'acroread']
"     " slower implementation but also detect executeables in other locations
"     "let s:pdfviewer = substitute(system('which '.s:pdfviewer), '\n.*', '', '')
"     let s:pdfviewer = '/usr/bin/'.s:pdfviewer
"     if filereadable(s:pdfviewer)
"       let g:utl_cfg_hdl_mt_application_pdf = 'silent !'.s:pdfviewer.' "%p"'
"       break
"     endif
"   endfor
" else
"   let g:utl_cfg_hdl_scm_http = "silent !www-browser '%u' &"
"   let g:utl_cfg_hdl_scm_mailto = "silent !mutt '%u'"
"   let g:utl_cfg_hdl_mt_application_pdf = 'new|set buftype=nofile|.!pdftotext "%p" -'
" endif
" if te#env#IsMac()
"     let g:utl_cfg_hdl_scm_http = "silent !open '%u' &"
" endif
" Shortcut to run the Utl command
" open link
" nnoremap gl :Utl<CR>
" xnoremap gl Utl o v<CR>
" " copy/yank link
" nnoremap gL Utl cl<CR>
" xnoremap gL Utl cl v<CR>

