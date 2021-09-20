" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

function! bundle#ycm#load() abort
  return 1
endfunction

"-----------------------------------------------------------------------------
" YouCompleteMe {1
if te#env#IsUnix()
    Plug 'ycm-core/YouCompleteMe', {'commit': '85c11d3a875b02a7ac28fb96d0c7a02782f60410' }
elseif te#env#IsWin32()
    Plug 'snakeleon/YouCompleteMe-x86', {'as': 'YouCompleteMe' }
else
    Plug 'snakeleon/YouCompleteMe-x64', {'as': 'YouCompleteMe' }
endif
    nnoremap  <silent><leader>yj :YcmCompleter GoTo<CR>
    nnoremap  <silent><leader>yd :YcmDiags<cr>
    nnoremap  <silent><leader>yt :YcmCompleter GetType<cr>
    nnoremap  <silent><leader>yp :YcmCompleter GetParent<cr>
    nnoremap  <silent><leader>yf :YcmCompleter FixIt<cr>
    "inoremap <silent><expr> ( complete_parameter#pre_complete("()")
    "smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
    "imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
    "smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
    "imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

    let g:ycm_warning_symbol = '!'
    let g:ycm_error_symbol = '>>'
    let g:ycm_key_detailed_diagnostics = '<leader>ys'
    let g:ycm_autoclose_preview_window_after_insertion = 1
    let g:ycm_complete_in_comments = 1
    let g:ycm_confirm_extra_conf=0
    let g:syntastic_always_populate_loc_list = 1
    let g:ycm_semantic_triggers = {
                \   'c' : ['->', '    ', '.', ' ', '(', '[', '&', 're!\w{4}'],
                \     'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],
                \     'perl' : ['->', '::', ' '],
                \     'php' : ['->', '::', '.'],
                \     'cs,java,javascript,d,vim,perl6,scala,vb,elixir,go' : ['.'],
                \     'ruby' : ['.', '::'],
                \     'lua' : ['.', ':'],
                \     'vim' : ['$', '&', 're![\w&$<-][\w:#<>-]*']
                \ }
    let g:ycm_semantic_triggers.tex = [
          \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
          \ ]
    let g:ycm_semantic_triggers.php = ['->', '::', '(', 'use ', 'namespace ', '\', '$', 're!\w{3}']
    let g:ycm_semantic_triggers.html = ['<', '"', '</', ' ']
    let g:ycm_semantic_triggers.python=['.', 'import ', 're!import [,\w ]+, ']
    let g:ycm_semantic_triggers.vimshell=['re!\w{2}', '/']
    let g:ycm_semantic_triggers.sh=['re![\w-]{2}', '/', '-', '$']
    let g:ycm_semantic_triggers.zsh=['re![\w-]{2}', '/', '-', '$']

    let g:ycm_collect_identifiers_from_tag_files = 1
    let g:ycm_filetype_blacklist = {
                \ 'tagbar' : 1,
                \ 'qf' : 1,
                \ 'notes' : 1,
                \ 'unite' : 1,
                \ 'text' : 1,
                \ 'vimwiki' : 1,
                \ 'startufy' : 1,
                \ 'pandoc' : 1,
                \ 'infolog' : 1,
                \ 'mail' : 1
                \}
  let g:ycm_global_ycm_extra_conf = '$VIMFILES/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


" Plug 'SirVer/ultisnips', { 'on': [] } " {1
" Plug 'honza/vim-snippets', { 'on': [] }
"   let g:plugins_lazyload_list = add(g:plugins_lazyload_list,'ultisnips')
"   let g:plugins_lazyload_list = add(g:plugins_lazyload_list,'vim-snippets')
"   let g:UltiSnipsUsePythonVersion = 3 "python version
"   let g:UltiSnipsExpandTrigger='<c-j>'
"   let g:UltiSnipsListSnippets ='<c-tab>'
"   let g:UltiSnipsJumpForwardTrigge='<c-j>'
"   let g:UltiSnipsJumpBackwardTrigge='<c-k>'
"   let g:UltiSnipsSnippetDirectories=['bundle/snippets/ultisnips']
"   let g:UltiSnipsSnippetsDir=$VIMFILES.'bundle/snippets'


