" Vim Jump
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

Plug g:host.'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'}
Plug g:host.'junegunn/fzf.vim'
nnoremap  <silent><Leader><Leader> :Files<cr>
nnoremap  <silent><c-l>  :History<cr>
nnoremap  <silent><c-j>  :Buffers<cr>

" Plug 'Yggdroot/LeaderF' " {1
" Plug 'Yggdroot/LeaderF-marks',{'on': 'LeaderfMarks'}
"   " show global mark
"   nnoremap <leader>pm :LeaderfMarks<Cr>

"   "function
"   nnoremap <c-k> :LeaderfFunction<cr>
"   nnoremap <Leader>pk :LeaderfFunction<cr>
"   " buffer 
"   nnoremap <Leader>pb :LeaderfBuffer<Cr>
"   " recent file 
"   nnoremap <c-l> :LeaderfMru<cr>
"   nnoremap <Leader>pr :LeaderfMru<cr>
"   "file
"   nnoremap <Leader>pp :LeaderfFile<cr>
"   "leaderf cmd
"   nnoremap <Leader>ps :LeaderfSelf<cr>
"   nnoremap <Leader>pt :LeaderfBufTag<cr>
"   "colorsceme
"   nnoremap <Leader>pc :LeaderfColorscheme<cr>
"   "CtrlP cmd
"   let g:Lf_ShortcutF = '<C-P>'
"   let g:Lf_ShortcutB = '<C-j>'
"   let g:Lf_CacheDiretory=$VIMFILES
"   let g:Lf_DefaultMode='FullPath'
"   let g:Lf_StlColorscheme = 'default'
"   let g:Lf_StlSeparator = { 'left': '', 'right': '' }
"   let g:Lf_UseMemoryCache = 0
"   nnoremap <Leader><Leader> :LeaderfFile<cr>

