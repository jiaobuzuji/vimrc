" Vim "
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

Plug 'fedorenchik/VimCalc3',{'on': 'Calc'} " {1
  nnoremap <Leader>ac :Calc<cr>

" Plug 'ianva/vim-youdao-translater', {'do': 'pip install requests --user','on': ['Ydc','Ydv']} " {1
"   nnoremap <Leader>ay <esc>:Ydc<cr>
"   vnoremap <Leader>ay <esc>:Ydv<cr>
"   nnoremap <F10> <esc>:Ydc<cr>
"   vnoremap <F10> <esc>:Ydv<cr>

Plug 'vim-scripts/DrawIt',{'on': 'DrawIt'} " {1
  function! s:drawit_toggle()
      let l:ret = te#utils#GetError('DrawIt','already on')
      if l:ret != 0
          :DIstop
      else
          call te#utils#EchoWarning('Started DrawIt')
      endif
  endfunction
  nnoremap <leader>aw :call <SID>drawit_toggle()<cr>

Plug 'mbbill/VimExplorer',{'on': 'VE'} " {1
  let g:VEConf_systemEncoding = 'cp936'
  noremap <F11> :silent! VE .<cr>
  " Open Vim File Explorer
  nnoremap <Leader>fj :silent! VE .<cr>

Plug 'qpkorr/vim-renamer',{'on': 'Ren'} " {1
Plug 'Shougo/vinarise.vim',{'on': 'Vinarise'} " {1
  "hex to ascii convert
  nnoremap <leader>ah :call Hex2asciiConvert()<cr>

Plug 'will133/vim-dirdiff',{'on': 'DirDiff'} " {1

