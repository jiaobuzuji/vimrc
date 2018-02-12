" Vim Jump
" Author    jiaobuzuji,jiaobuzuji@163.com
" Github    https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

" Matchit.vim {1
"extend %
runtime macros/matchit.vim "important 
let b:match_ignorecase=1
set mps+=<:>
set mps+=":"

" jump to somewhere:file,mru,bookmark
Plug 'Yggdroot/LeaderF' " {1
Plug 'Yggdroot/LeaderF-marks',{'on': 'LeaderfMarks'}
  " show global mark
  nnoremap <leader>pm :LeaderfMarks<Cr>

  "function
  nnoremap <c-k> :LeaderfFunction<cr>
  nnoremap <Leader>pk :LeaderfFunction<cr>
  " buffer 
  nnoremap <Leader>pb :LeaderfBuffer<Cr>
  " recent file 
  nnoremap <c-l> :LeaderfMru<cr>
  nnoremap <Leader>pr :LeaderfMru<cr>
  "file
  nnoremap <Leader>pp :LeaderfFile<cr>
  "leaderf cmd
  nnoremap <Leader>ps :LeaderfSelf<cr>
  nnoremap <Leader>pt :LeaderfBufTag<cr>
  "colorsceme
  nnoremap <Leader>pc :LeaderfColorscheme<cr>
  "CtrlP cmd
  let g:Lf_ShortcutF = '<C-P>'
  let g:Lf_ShortcutB = '<C-j>'
  let g:Lf_CacheDiretory=$VIMFILES
  let g:Lf_DefaultMode='FullPath'
  let g:Lf_StlColorscheme = 'default'
  let g:Lf_StlSeparator = { 'left': '', 'right': '' }
  let g:Lf_UseMemoryCache = 0
  nnoremap <Leader><Leader> :LeaderfFile<cr>

Plug 'easymotion/vim-easymotion', { 'on': [ '<Plug>(easymotion-lineforward)',
            \ '<Plug>(easymotion-linebackward)','<Plug>(easymotion-overwin-w)' ]} " {1
  map W <Plug>(easymotion-lineforward)
  map B <Plug>(easymotion-linebackward)
  " MultiWindow easymotion for word
  nmap <Leader>jw <Plug>(easymotion-overwin-w)
  xmap <Leader>jw <Plug>(easymotion-bd-w)
  omap <Leader>jw <Plug>(easymotion-bd-w)
  " Multi Input Find Motion:s
  nmap <Leader>js <Plug>(easymotion-sn)
  xmap <Leader>js <Plug>(easymotion-sn)
  omap <Leader>js <Plug>(easymotion-sn)
  " Multi Input Find Motion:t
  nmap <Leader>jt <Plug>(easymotion-tn)
  xmap <Leader>jt <Plug>(easymotion-tn)
  omap <Leader>jt <Plug>(easymotion-tn)
  " MultiWindow easymotion for line
  nmap <Leader>jl <Plug>(easymotion-overwin-line)
  xmap <Leader>jl <Plug>(easymotion-bd-jk)
  omap <Leader>jl <Plug>(easymotion-bd-jk)
  " MultiWindow easymotion for char
  nmap <Leader>jj <Plug>(easymotion-overwin-f)
  xmap <Leader>jj <Plug>(easymotion-bd-f)
  omap <Leader>jj <Plug>(easymotion-bd-f)
  map <LocalLeader><LocalLeader> <Plug>(easymotion-prefix)

  let g:EasyMotion_startofline = 0
  let g:EasyMotion_show_prompt = 0
  let g:EasyMotion_verbose = 0
  " }

Plug 'kshenoy/vim-signature' " {1
  let g:SignatureEnabledAtStartup=1

Plug 'MattesGroeger/vim-bookmarks', { 'on': ['BookmarkShowAll', 'BookmarkToggle', 'BookmarkAnnotate']} " {1
  let g:bookmark_auto_save = 1
  let g:bookmark_no_default_key_mappings = 1
  let g:bookmark_save_per_working_dir = 1
  let g:bookmark_sign = '>>'
  let g:bookmark_annotation_sign = '##'
  let g:bookmark_auto_close = 1
  "Bookmark annotate
  nnoremap <leader>mi :BookmarkAnnotate<CR>
  "Bookmark toggle
  nnoremap <leader>ma :BookmarkToggle<cr>
  "Bookmark annotate 
  vnoremap <leader>mi :<c-u>exec ':BookmarkAnnotate '.getline("'<")[getpos("'<")[2]-1:getpos("'>")[2]-1]<cr>
  "Bookmark clear
  nnoremap <leader>mc :BookmarkClear<cr>
  "Bookmark show all
  nnoremap <leader>mb :BookmarkShowAll<CR>

Plug 'ronakg/quickr-preview.vim', { 'for': ['qf']} " {1
  let g:quickr_preview_keymaps = 0
  autocmd filetype_group FileType qf nmap <buffer> <down> <down><plug>(quickr_preview)
  autocmd filetype_group FileType qf nmap <buffer> <up> <up><plug>(quickr_preview)
  autocmd filetype_group FileType qf nmap <buffer> <Space><Space>  <plug>(quickr_preview)

" TODO {1
" if get(g:,'feat_enable_airline') == 0
"     Plug 'tracyone/vim-buftabline'
"     let g:buftabline_numbers=2
"     let g:buftabline_show=1
"     let g:buftabline_indicators=1
" endif
" 
