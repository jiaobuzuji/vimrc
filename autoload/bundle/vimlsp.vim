" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

function! bundle#vimlsp#load() abort
  return 1
endfunction

"-----------------------------------------------------------------------------
Plug 'prabirshrestha/vim-lsp' " {1
Plug 'mattn/vim-lsp-settings'
let g:lsp_settings_servers_dir = $VIMFILES.'/vim-lsp-settings/servers'
let g:lsp_settings_global_settings_dir = $VIMFILES.'/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
" register source
" Plug 'prabirshrestha/asyncomplete-buffer.vim'
" autocmd BufReadPre call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
"     \ 'name': 'buffer',
"     \ 'allowlist': ['*'],
"     \ 'blocklist': ['go'],
"     \ 'completor': function('asyncomplete#sources#buffer#completor'),
"     \ 'config': {
"     \    'max_buffer_size': 5000000,
"     \  },
"     \ }))
Plug 'prabirshrestha/asyncomplete-file.vim'
autocmd User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'allowlist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))
" Plug 'yami-beta/asyncomplete-omni.vim'
" call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
"       \ 'name': 'omni',
"       \ 'allowlist': ['*'],
"       \ 'blocklist': ['c', 'cpp', 'html'],
"       \ 'completor': function('asyncomplete#sources#omni#completor'),
"       \ 'config': {
"       \   'show_source_kind': 1,
"       \  },
"       \ }))
if executable('clangd')
  autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '-background-index']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

" let g:asyncomplete_auto_popup = 0
" function! s:check_back_space() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
" inoremap <silent><expr> <TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ <SID>check_back_space() ? "\<TAB>" :
"   \ asyncomplete#force_refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

imap <c-space> <Plug>(asyncomplete_force_refresh)


" -----------------------------------------------------------------------------
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


