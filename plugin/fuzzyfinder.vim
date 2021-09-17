" Vim Jump
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

" Plug g:host.'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'} " {1
" Plug g:host.'junegunn/fzf.vim'
" Plug g:host.'tracyone/fzf-funky',{'on': 'FzfFunky'}
let g:fzf_history_dir = $VIMFILES.'/.fzf-history'
" let s:fzf_custom_command = 'ag --hidden -l --nocolor --nogroup'.'
"   \ --ignore "*.[odODaA]" --ignore "*.out" --ignore "*.hex" --ignore "*.bin"
"   \ --ignore "*.exe" --ignore "*.so" --ignore "*.dll"
"   \ --ignore "cscope*"
"   \ --ignore ".git" --ignore ".svn" --ignore ".hg"
"   \ -g ""'
let s:fzf_custom_command = 'rg -H --hidden -l'.'
  \ -g "!*.out" -g "!*.hex" -g "!*.bin"
  \ -g "!*.exe" -g "!*.so" -g "!*.dll"
  \ -g "!cscope*"
  \ -g "!.git/*" -g "!.svn/*" -g "!.hg/*"
  \ ""'
let $FZF_DEFAULT_COMMAND=s:fzf_custom_command
nnoremap <leader>kk :Files<cr>
nnoremap <leader>kh :History<cr>
nnoremap <leader>kb :Buffers<cr>
nnoremap <leader>kr :Rg<cr>
nnoremap <leader>ks :Snippets<cr>
nnoremap <leader>kw :Windows<cr>
nnoremap <leader>km :Marks<cr>
nnoremap <leader>kl :Lines<cr>
nnoremap <leader>kt :Tags<cr>
nnoremap <leader>kc :Commands<cr>
nnoremap <leader>kgc :Commits<cr>
nnoremap <leader>kgf :GFiles<cr>
nnoremap <leader>kf  :FzfFunky<cr>
" nnoremap <leader>kmp :Maps<cr>
" nnoremap <leader>kht :Helptags<cr>


" Plug g:host.'Yggdroot/LeaderF' " {1
" Plug g:host.'Yggdroot/LeaderF-marks',{'on': 'LeaderfMarks'}
" nnoremap <leader>kk :LeaderfFile<cr>
" nnoremap <leader>kh :LeaderfMru<cr>
" nnoremap <leader>kb :LeaderfBuffer<Cr>
" nnoremap <leader>km :LeaderfMarks<Cr>
" nnoremap <leader>kf :LeaderfFunction<cr>
" nnoremap <leader>kl :LeaderfLines<cr>
" nnoremap <leader>ks :LeaderfSelf<cr>
" nnoremap <leader>kt :LeaderfBufTag<cr>
" let g:Lf_CacheDiretory=$VIMFILES
" let g:Lf_DefaultMode='FullPath'
" let g:Lf_StlSeparator = { 'left': '', 'right': '' }
" let g:Lf_UseMemoryCache = 0


