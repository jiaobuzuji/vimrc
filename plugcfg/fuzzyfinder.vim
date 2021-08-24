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
nnoremap <Leader>kk :Files<cr>
nnoremap <Leader>kh :History<cr>
nnoremap <Leader>kb :Buffers<cr>
nnoremap <Leader>kv :Rg<cr>
nnoremap <Leader>ks :Snippets<cr>
nnoremap <Leader>kw :Windows<cr>
nnoremap <Leader>km :Marks<cr>
nnoremap <Leader>kl :Lines<cr>
" nnoremap <Leader>kht :Helptags<cr>
nnoremap <Leader>kgc :Commits<cr>
nnoremap  <silent><Leader>kf  :FzfFunky<cr>


" Plug g:host.'Yggdroot/LeaderF' " {1
" Plug g:host.'Yggdroot/LeaderF-marks',{'on': 'LeaderfMarks'}
" nnoremap <Leader>kk :LeaderfFile<cr>
" nnoremap <Leader>kh :LeaderfMru<cr>
" nnoremap <Leader>kb :LeaderfBuffer<Cr>
" nnoremap <leader>km :LeaderfMarks<Cr>
" nnoremap <leader>kf :LeaderfFunction<cr>
" nnoremap <Leader>kl :LeaderfLines<cr>
" "leaderf cmd
" nnoremap <Leader>ks :LeaderfSelf<cr>
" nnoremap <Leader>kt :LeaderfBufTag<cr>
" "CtrlP cmd
" let g:Lf_CacheDiretory=$VIMFILES
" let g:Lf_DefaultMode='FullPath'
" let g:Lf_StlSeparator = { 'left': '', 'right': '' }
" let g:Lf_UseMemoryCache = 0


