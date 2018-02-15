" Vim Jump
" Author    jiaobuzuji,jiaobuzuji@163.com
" Github    https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

" YouCompleteMe {1
" if te#env#IsUnix()
"     Plug 'Valloric/YouCompleteMe', { 'on': [], 'commit': '32f1eae9cb8b8c7793f632fd24b2289839bf768e' }
" elseif te#env#IsWin32()
"     Plug 'snakeleon/YouCompleteMe-x86', { 'on': [] }
" else
"     Plug 'snakeleon/YouCompleteMe-x64', { 'on': [] }
" endif
" Plug 'tenfyzhong/CompleteParameter.vim', { 'on': [] }
"   " generate .ycm_extra_conf.py for current directory
"   " lazyload ultisnips and YouCompleteMe

"   " jume to definition (YCM)
"   function! s:enable_ycm()
"     call delete('.ycm_extra_conf.pyc')  | call youcompleteme#Enable() 
"   endfunction
"   nnoremap <leader>yj :YcmCompleter GoTo<CR>
"   nnoremap <leader>yd :YcmDiags<cr>
"   nnoremap <leader>yt :YcmCompleter GetType<cr>
"   nnoremap <leader>yp :YcmCompleter GetParent<cr>
"   nnoremap <leader>yf :YcmCompleter FixIt<cr>
"   nnoremap <Leader>yu :call te#complete#update_ycm()<cr>
"   "inoremap <silent><expr> ( complete_parameter#pre_complete("()")
"   "smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
"   "imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
"   "smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
"   "imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
"   let g:ycm_key_detailed_diagnostics = '<leader>ys'
"   let g:ycm_autoclose_preview_window_after_insertion = 1
"   let g:ycm_complete_in_comments = 1
"   let g:ycm_confirm_extra_conf=0
"   let g:syntastic_always_populate_loc_list = 1
"   let g:ycm_semantic_triggers = {
"         \   'c' : ['->', '    ', '.', ' ', '(', '[', '&', 're!\w{4}'],
"         \     'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],
"         \     'perl' : ['->', '::', ' '],
"         \     'php' : ['->', '::', '.'],
"         \     'cs,java,javascript,d,vim,perl6,scala,vb,elixir,go' : ['.'],
"         \     'ruby' : ['.', '::'],
"         \     'lua' : ['.', ':'],
"         \     'vim' : ['$', '&', 're![\w&$<-][\w:#<>-]*']
"         \ }
"   let g:ycm_semantic_triggers.tex = [
"         \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
"         \ ]
"   let g:ycm_semantic_triggers.php = ['->', '::', '(', 'use ', 'namespace ', '\', '$', 're!\w{3}']
"   let g:ycm_semantic_triggers.html = ['<', '"', '</', ' ']
"   let g:ycm_semantic_triggers.python=['.', 'import ', 're!import [,\w ]+, ']
"   let g:ycm_semantic_triggers.vimshell=['re!\w{2}', '/']
"   let g:ycm_semantic_triggers.sh=['re![\w-]{2}', '/', '-', '$']
"   let g:ycm_semantic_triggers.zsh=['re![\w-]{2}', '/', '-', '$']

"   let g:ycm_collect_identifiers_from_tag_files = 1
"   let g:ycm_filetype_blacklist = {
"         \ 'tagbar' : 1,
"         \ 'qf' : 1,
"         \ 'notes' : 1,
"         \ 'unite' : 1,
"         \ 'text' : 1,
"         \ 'vimwiki' : 1,
"         \ 'startufy' : 1,
"         \ 'pandoc' : 1,
"         \ 'infolog' : 1,
"         \ 'mail' : 1
"         \}
"   let g:ycm_global_ycm_extra_conf = g:vinux_plugin_dir.cur_val.'/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

Plug 'Shougo/deoplete.nvim', { 'on': [] } " {1
" Plug 'zchee/deoplete-clang',{'for':['c', 'cpp']}
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
  let g:plugins_lazyload_list = add(g:plugins_lazyload_list,'deoplete.nvim')
  " if te#env#IsUnix()
  "   let g:deoplete#sources#clang#libclang_path='/usr/local/lib/libclang.so'
  " endif
  let g:deoplete#enable_at_startup = 1
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>"
  " let g:deoplete#sources#clang#flags=[]
  " function! s:AddCFlags(dir)
  "   let l:dir=a:dir.'/'
  "   if strlen(a:dir) == 0
  "     let l:dir=getcwd().'/'
  "   endif
  "   if empty(glob(l:dir.'.clang_complete'))
  "     return 1 
  "   else
  "     for s:line in readfile(l:dir.'.clang_complete', '')
  "       call add(g:deoplete#sources#clang#flags,matchstr(s:line,"\\v[^']+"))
  "     endfor
  "   endif
  "   return 0
  " endfunction
  " call s:AddCFlags('')
  "let g:deoplete#omni#functions = {}
  "let g:deoplete#omni#functions.zsh = ['zsh_completion#Complete']
  "let g:deoplete#omni_patterns = {}
  "let g:deoplete#omni_patterns.zsh = '[^\t ]\+'
  "let g:deoplete#omni_patterns.lua = get(g:deoplete#omni_patterns, 'lua', '.')
  "let g:deoplete#sources = {}
  "load all source
  "let g:deoplete#sources._ = []

" Plug 'SirVer/ultisnips', { 'on': [] } " {1
" Plug 'honza/vim-snippets', { 'on': [] }
" " Plug 'tracyone/snippets', { 'on': [] }
"   let g:plugins_lazyload_list = add(g:plugins_lazyload_list,'ultisnips')
"   let g:plugins_lazyload_list = add(g:plugins_lazyload_list,'vim-snippets')
"   let g:UltiSnipsUsePythonVersion = 3 "python version
"   let g:UltiSnipsExpandTrigger='<c-j>'
"   let g:UltiSnipsListSnippets ='<c-tab>'
"   let g:UltiSnipsJumpForwardTrigge='<c-j>'
"   let g:UltiSnipsJumpBackwardTrigge='<c-k>'
"   let g:UltiSnipsSnippetDirectories=['bundle/snippets/ultisnips']
"   let g:UltiSnipsSnippetsDir=$VIMFILES.'bundle/snippets'
