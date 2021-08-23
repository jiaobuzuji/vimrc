" Vim Jump
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

Plug g:host.'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'} " {1
Plug g:host.'junegunn/fzf.vim'
Plug g:host.'tracyone/fzf-funky',{'on': 'FzfFunky'}
let g:fzf_history_dir = $VIMFILES.'/.fzf-history'
let s:fzf_custom_command = 'ag --hidden -l --nocolor --nogroup -U'.'
  \ --ignore "*.[odODaA]" --ignore "*.out" --ignore "*.hex" --ignore "*.bin"
  \ --ignore "*.exe" --ignore "*.so" --ignore "*.dll"
  \ --ignore "cscope*"
  \ --ignore ".git" --ignore ".svn" --ignore ".hg"
  \ -g ""'
let $FZF_DEFAULT_COMMAND=s:fzf_custom_command
" CtrlP
nnoremap <Leader>pp :Files<cr>
nnoremap <Leader>ph :History<cr>
nnoremap <Leader>pb :Buffers<cr>
nnoremap <Leader>pv :Ag<cr>
nnoremap <Leader>ps :Snippets<cr>
nnoremap <Leader>pw :Windows<cr>
nnoremap <Leader>pm :Marks<cr>
" nnoremap <Leader>pht :Helptags<cr>
nnoremap <Leader>pgc :Commits<cr>
nnoremap  <silent><Leader>pf  :FzfFunky<cr>


" Plug 'Yggdroot/LeaderF' " {1
" Plug 'Yggdroot/LeaderF-marks',{'on': 'LeaderfMarks'}
"   nnoremap <Leader>pp :LeaderfFile<cr>
"   nnoremap <Leader>ph :LeaderfMru<cr>
"   nnoremap <Leader>pb :LeaderfBuffer<Cr>
"   nnoremap <leader>pm :LeaderfMarks<Cr>
"   nnoremap <leader>pf :LeaderfFunction<cr>
"   "leaderf cmd
"   nnoremap <Leader>ps :LeaderfSelf<cr>
"   nnoremap <Leader>pt :LeaderfBufTag<cr>
"   "CtrlP cmd
"   let g:Lf_CacheDiretory=$VIMFILES
"   let g:Lf_DefaultMode='FullPath'
"   let g:Lf_StlSeparator = { 'left': '', 'right': '' }
"   let g:Lf_UseMemoryCache = 0


