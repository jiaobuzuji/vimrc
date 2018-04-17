" Vim " Help:Welcome screen, leader guide
" Author:   jiaobuzuji,jiaobuzuji@163.com
" Github:   https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

Plug 'terryma/vim-multiple-cursors' " {1
Plug 'terryma/vim-expand-region' " {1
Plug 'Raimondi/delimitMate',{'on':[]} " {1
  let g:plugins_lazyload_list = add(g:plugins_lazyload_list,'delimitMate')
  let g:delimitMate_nesting_quotes = ['"','`']
  let g:delimitMate_expand_cr = 0
  let g:delimitMate_expand_space = 0

Plug 'thinca/vim-qfreplace',{'on': 'Qfreplace'} " {1
Plug 'scrooloose/nerdcommenter' " {1
  let g:NERDSpaceDelims=1
  let g:NERDMenuMode=1
  "toggle comment
  nmap <Leader>;; <plug>NERDCommenterComment
  nmap <Leader>cc <plug>NERDCommenterComment

Plug 'tpope/vim-surround' " {1
Plug 'junegunn/vim-easy-align',{'on': [ '<Plug>(EasyAlign)', '<Plug>(LiveEasyAlign)' ]} " {1
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
  xmap <leader>al <Plug>(LiveEasyAlign)
  " Live easy align
  nmap <leader>al <Plug>(LiveEasyAlign)
  if !exists('g:easy_align_delimiters')
      let g:easy_align_delimiters = {}
  endif
  let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }

Plug 'osyo-manga/vim-over',{'on': 'OverCommandLine'} " {1
  nnoremap <c-h> :OverCommandLine<cr>:%s/<C-R>=expand("<cword>")<cr>/
  vnoremap <c-h> :OverCommandLine<cr>:<c-u>%s/<C-R>=getline("'<")[getpos("'<")[2]-1:getpos("'>")[2]-1]<cr>/
  nnoremap ss :OverCommandLine<cr>%s//<left>
  "vnoremap : :OverCommandLine<cr>s//<left>

" Plug 'haya14busa/incsearch.vim' " {1
"   let g:incsearch#auto_nohlsearch = 1
"   map n  <Plug>(incsearch-nohl-n)zz
"   map N  <Plug>(incsearch-nohl-N)zz
" Plug 'haya14busa/vim-asterisk' " {1
"   " map *   <Plug>(incsearch-nohl)<Plug>(asterisk-*)
"   " map g*  <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
"   " map #   <Plug>(incsearch-nohl)<Plug>(asterisk-#)
"   " map g#  <Plug>(incsearch-nohl)<Plug>(asterisk-g#)
"   map *   <Plug>(asterisk-*)
"   map g*  <Plug>(asterisk-g*)
"   map #   <Plug>(asterisk-#)
"   map g#  <Plug>(asterisk-g#)

Plug 'mbbill/undotree',  { 'on': 'UndotreeToggle' } " {1
  nnoremap <leader>tu :UndotreeToggle<cr>
  let g:undotree_WindowLayout=2
  let g:undotree_DiffpanelHeight=8
  set undofile undodir=$VIMFILES/undodir/
  autocmd misc_group BufWritePre $VIMFILES/undodir/* set noundofile

Plug 'tweekmonster/spellrotate.vim', {'on': ['<Plug>(SpellRotateForward)']} " {1
  nmap <silent> <leader>zn <Plug>(SpellRotateForward)
  nmap <silent> <leader>zp <Plug>(SpellRotateBackward)
  vmap <silent> <leader>zn <Plug>(SpellRotateForwardV)
  vmap <silent> <leader>zp <Plug>(SpellRotateBackwardV)

Plug 'tpope/vim-repeat' "repeat enhance {1
  silent! call repeat#set("\<plug>NERDCommenterComment", v:count)
  silent! call repeat#set("\<plug>NERDCommenterAppend", v:count)
  silent! call repeat#set("\<plug>NERDCommenterUncomment", v:count)
  silent! call repeat#set("\<Plug>(SpellRotateForward)", v:count)
  silent! call repeat#set("\<Plug>(SpellRotateBackward)", v:count)

