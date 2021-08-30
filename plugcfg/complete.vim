" Vim Jump
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

Plug g:host.'neoclide/coc.nvim',{'branch':'release'} " {1
" :CocInstall coc-marketplace coc-highlight coc-pairs coc-yank
" \ coc-word coc-omni coc-snippets coc-tabnine
" \ coc-json coc-git coc-sh coc-vimlsp coc-clangd coc-cmake coc-python
" :CocCommand clangd.install

set hidden " TextEdit might fail if hidden is not set.
set shortmess+=c " Don't pass messages to |ins-completion-menu|.

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" " Use <c-space> to trigger completion.
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif

" " Make <CR> auto-select the first completion item and notify coc.nvim to
" " format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" " Mappings for CoCList
" " Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" " YouCompleteMe {1
" if te#env#IsUnix()
"     Plug g:host.'ycm-core/YouCompleteMe' " , {'commit': '85c11d3a875b02a7ac28fb96d0c7a02782f60410' }
" elseif te#env#IsWin32()
"     Plug g:host.'snakeleon/YouCompleteMe-x86', {'as': 'YouCompleteMe' }
" else
"     Plug g:host.'snakeleon/YouCompleteMe-x64', {'as': 'YouCompleteMe' }
" endif
"     nnoremap  <silent><leader>yj :YcmCompleter GoTo<CR>
"     nnoremap  <silent><leader>yd :YcmDiags<cr>
"     nnoremap  <silent><leader>yt :YcmCompleter GetType<cr>
"     nnoremap  <silent><leader>yp :YcmCompleter GetParent<cr>
"     nnoremap  <silent><leader>yf :YcmCompleter FixIt<cr>
"     "inoremap <silent><expr> ( complete_parameter#pre_complete("()")
"     "smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
"     "imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
"     "smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
"     "imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

"     let g:ycm_warning_symbol = '!'
"     let g:ycm_error_symbol = '>>'
"     let g:ycm_key_detailed_diagnostics = '<leader>ys'
"     let g:ycm_autoclose_preview_window_after_insertion = 1
"     let g:ycm_complete_in_comments = 1
"     let g:ycm_confirm_extra_conf=0
"     let g:syntastic_always_populate_loc_list = 1
"     let g:ycm_semantic_triggers = {
"                 \   'c' : ['->', '    ', '.', ' ', '(', '[', '&', 're!\w{4}'],
"                 \     'cpp,objcpp' : ['->', '.', ' ', '(', '[', '&', '::'],
"                 \     'perl' : ['->', '::', ' '],
"                 \     'php' : ['->', '::', '.'],
"                 \     'cs,java,javascript,d,vim,perl6,scala,vb,elixir,go' : ['.'],
"                 \     'ruby' : ['.', '::'],
"                 \     'lua' : ['.', ':'],
"                 \     'vim' : ['$', '&', 're![\w&$<-][\w:#<>-]*']
"                 \ }
"     let g:ycm_semantic_triggers.tex = [
"           \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*, ?)*'
"           \ ]
"     let g:ycm_semantic_triggers.php = ['->', '::', '(', 'use ', 'namespace ', '\', '$', 're!\w{3}']
"     let g:ycm_semantic_triggers.html = ['<', '"', '</', ' ']
"     let g:ycm_semantic_triggers.python=['.', 'import ', 're!import [,\w ]+, ']
"     let g:ycm_semantic_triggers.vimshell=['re!\w{2}', '/']
"     let g:ycm_semantic_triggers.sh=['re![\w-]{2}', '/', '-', '$']
"     let g:ycm_semantic_triggers.zsh=['re![\w-]{2}', '/', '-', '$']

"     let g:ycm_collect_identifiers_from_tag_files = 1
"     let g:ycm_filetype_blacklist = {
"                 \ 'tagbar' : 1,
"                 \ 'qf' : 1,
"                 \ 'notes' : 1,
"                 \ 'unite' : 1,
"                 \ 'text' : 1,
"                 \ 'vimwiki' : 1,
"                 \ 'startufy' : 1,
"                 \ 'pandoc' : 1,
"                 \ 'infolog' : 1,
"                 \ 'mail' : 1
"                 \}
"   let g:ycm_global_ycm_extra_conf = '$VIMFILES/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'


" Plug 'Shougo/deoplete.nvim', { 'on': [] } " {1
" " Plug 'zchee/deoplete-clang',{'for':['c', 'cpp']}
"   let g:plugins_lazyload_list = add(g:plugins_lazyload_list,'deoplete.nvim')
"   " if te#env#IsUnix()
"   "   let g:deoplete#sources#clang#libclang_path='/usr/local/lib/libclang.so'
"   " endif
"   let g:deoplete#enable_at_startup = 1
"   " inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>"
"   " let g:deoplete#sources#clang#flags=[]
"   " function! s:AddCFlags(dir)
"   "   let l:dir=a:dir.'/'
"   "   if strlen(a:dir) == 0
"   "     let l:dir=getcwd().'/'
"   "   endif
"   "   if empty(glob(l:dir.'.clang_complete'))
"   "     return 1 
"   "   else
"   "     for s:line in readfile(l:dir.'.clang_complete', '')
"   "       call add(g:deoplete#sources#clang#flags,matchstr(s:line,"\\v[^']+"))
"   "     endfor
"   "   endif
"   "   return 0
"   " endfunction
"   " call s:AddCFlags('')
"   "let g:deoplete#omni#functions = {}
"   "let g:deoplete#omni#functions.zsh = ['zsh_completion#Complete']
"   "let g:deoplete#omni_patterns = {}
"   "let g:deoplete#omni_patterns.zsh = '[^\t ]\+'
"   "let g:deoplete#omni_patterns.lua = get(g:deoplete#omni_patterns, 'lua', '.')
"   "let g:deoplete#sources = {}
"   "load all source
"   "let g:deoplete#sources._ = []


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
