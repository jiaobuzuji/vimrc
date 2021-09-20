" Vim Key Mapping
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

" Basic {1
" Don't use Ex mode, use Q for formatting.  Revert with ":unmap Q".
noremap Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.  Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

nnoremap Y y$
nnoremap <leader>/ :nohlsearch<CR>

" 'Save' and 'Esc'
inoremap jj           <c-[>
inoremap j<Space>     j 

nnoremap vv   :update<cr>
vnoremap vv   <C-C>:update<cr>
inoremap vv   <C-[>:update<cr>
inoremap v<Space>     v 

" tab selection
nnoremap <leader>1  1gt
nnoremap <leader>2  2gt
nnoremap <leader>3  3gt
nnoremap <leader>4  4gt
nnoremap <leader>5  5gt
nnoremap <leader>6  6gt
nnoremap <leader>7  7gt
nnoremap <leader>8  8gt
nnoremap <leader>9  9gt

" Miscellaneous {1
" always use "0" register
vnoremap [p "0p
 
" Insert new line in normal mode
nnoremap tt o<c-[>

" nnoremap <silent> <BS> <C-o>

" Format Current File
nnoremap <silent> <c-F3> :set ff=unix<CR>:%s/\s\+$//<CR>

"visual mode hit tab forward indent ,hit shift-tab backward indent
"Reselect visual block after indent/outdent.
vnoremap <TAB>    >gv
vnoremap <s-TAB>  <gv
vnoremap <        <gv
vnoremap >        >gv
 
" Move the lines to below/before
xnoremap <leader>mj :m '>+1<CR>gv=gv
xnoremap <leader>mk :m '<-2<CR>gv=gv
nnoremap <leader>mj :m .+1<CR>==
nnoremap <leader>mk :m .-2<CR>==

" Using <Plug> instead of
vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

" copy,paste and cut 
nnoremap <S-Insert> "+gP
cnoremap <S-Insert> <C-R>+
cnoremap <C-V>      <C-R>+
inoremap <c-v>      <C-o>"+gp

"replace
nnoremap ss :%s/<C-R>//
vnoremap ss :s/<C-R>//

" verilog instance {1
vnoremap <silent> <c-F4> :s#^\s*\(input\\|output\)\(\s\+\(wire\\|reg\)\)\?\s*\(\[.\{-1,}\]\s*\)\?#.<CR>gv:s#^\s*\(\/\/.*\)#    \1#e<CR>gv:s#^\.\(\<\w\+\>\)\(\s*\)#    .\1\2   (\1\2   )<CR>

" Move cursor {1
" move cursor in Insert mode
inoremap <m-h> <Left>
inoremap <m-l> <Right>
inoremap <m-j> <Down>
inoremap <m-k> <Up>
inoremap        <C-A> <C-O>^
inoremap   <C-X><C-A> <C-A>
inoremap <expr> <C-E> col('.')>strlen(getline('.'))<bar><bar>pumvisible()?"\<Lt>C-E>":"\<Lt>End>"

" move cursor in Command line
" call te#meta#map('cnoremap','l','<right>')
" call te#meta#map('cnoremap','j','<down>')
" call te#meta#map('cnoremap','k','<up>')
" call te#meta#map('cnoremap','b','<S-left>')
" cnoremap        <C-A> <Home>
" cnoremap   <C-X><C-A> <C-A>

" multiple windows and tabs {1
" Quit Vim
nnoremap <leader>qa :qa<cr>
nnoremap <leader>wd <C-w>q

" move between windows
nnoremap <m-h> <c-w>h
nnoremap <m-l> <c-w>l
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
" " vertical open window
" nnoremap <leader>wv :vsp<cr>
" " vertical open window then focus the new one
" nnoremap <leader>wV :vsp<cr><C-w>l
" " horizontal open window 
" nnoremap <leader>ws :sp<cr>
" " horizontal open window then focus the new one
" nnoremap <leader>wS :sp<cr><C-w>j
" " maxsize of current windows
" nnoremap <leader>wo :only<cr>
" " quit current windows
" nnoremap <leader>wd <C-w>q
" " switch between two windows alternately
" nnoremap <leader>w<tab> <C-w><C-p>
" " switch between two windows.
" nnoremap <leader>ww <C-w><C-w>
" " move to left win
" nnoremap <leader>wh <C-w>h
" " move to right win
" nnoremap <leader>wl <C-w>l
" " move down win
" nnoremap <leader>wj <C-w>j
" " move up win
" nnoremap <leader>wk <C-w>k
" " move to very left win
" nnoremap <leader>wH <C-w>H
" " move to very right win
" nnoremap <leader>wL <C-w>L
" " move to very down win
" nnoremap <leader>wJ <C-w>J
" " move to very up win
" nnoremap <leader>wK <C-w>K
" " rotate the window backward
" nnoremap <leader>wR <C-w>R
" " rotate the window forward
" nnoremap <leader>wr <C-w>r
" " Move the current window to a new tab page.
" nnoremap <leader>wt <C-w>T


" " switch to last open tab or buffer
" nnoremap <leader><tab> :call te#utils#tab_buf_switch(-2)<cr>
" "switch previous tab or buftab
" nnoremap <Left> :call te#utils#tab_buf_switch(0)<cr>
" "switch next tab or buftab
" nnoremap <Right> :call te#utils#tab_buf_switch(-1)<cr>
" " next buffer or tab
" nnoremap <leader>bn :call te#utils#tab_buf_switch(-1)<cr>
" " previous buffer or tab
" nnoremap <leader>bp :call te#utils#tab_buf_switch(0)<cr>
" " delete buffer
" nnoremap <leader>bk :bdelete<cr>
" "buffer only
" nnoremap <leader>bo :call te#tools#buf_only('', '')<cr>

" }

" TODO {1
" noremap! <expr> <SID>transposition getcmdpos()>strlen(getcmdline())?"\<Left>":getcmdpos()>1?'':"\<Right>"
" noremap! <expr> <SID>transpose "\<BS>\<Right>".matchstr(getcmdline()[0 : getcmdpos()-2], '.$')
" cmap   <script> <C-T> <SID>transposition<SID>transpose
"
" "generate tags and cscope
" nnoremap <localleader>u :call te#pg#do_cs_tags(getcwd(), 0x3)<cr>
" 
" "run command from input
" nnoremap <leader>rc :call te#utils#run_command("", 1)<cr>
"
" if te#env#SupportTerminal()
"     "terminal-emulator setting
"     "execute 'tnoremap <Esc> <C-\><C-n>' "effect <a-> key?
"     silent! execute 'tnoremap <Esc><Esc> '.&termkey.'N'
"     call te#meta#map('tmap','h',&termkey.'h')
"     call te#meta#map('tmap','j',&termkey.'j')
"     call te#meta#map('tmap','k',&termkey.'k')
"     call te#meta#map('tmap','l',&termkey.'l')
"     silent! execute 'tmap <c-v> '.&termkey.'"*'
"     call te#meta#map('tnoremap','b','<C-left>')
"     call te#meta#map('tnoremap','f','<C-right>')
" endif
" 
" " Open vimshell or neovim's emulator in split window
" nnoremap <leader>as :call te#tools#shell_pop(0x1)<cr>
" noremap <F4> :call te#tools#shell_pop(0x1)<cr>
" " Open vimshell or neovim's emulator in vertical window
" nnoremap <leader>av :call te#tools#shell_pop(0x2)<cr>
" " Open vimshell or neovim's emulator in new tab
" nnoremap <leader>ns :call te#tools#shell_pop(0x4)<cr>
" 
" call te#meta#map('inoremap','u','<c-\><c-o>:call te#tools#PreviousCursor(6)<cr>')
" call te#meta#map('inoremap','d','<c-\><c-o>:call te#tools#PreviousCursor(7)<cr>')
" call te#meta#map('nnoremap','d',':call te#tools#PreviousCursor(7)<cr>')
" call te#meta#map('nnoremap','u',':call te#tools#PreviousCursor(6)<cr>')
" call te#meta#map('inoremap','m','<c-\><c-o>:call te#tools#PreviousCursor(0)<cr>')
" call te#meta#map('inoremap','n','<c-\><c-o>:call te#tools#PreviousCursor(1)<cr>')
" call te#meta#map('nnoremap','m',':call te#tools#PreviousCursor(0)<cr>')
" call te#meta#map('nnoremap','n',':call te#tools#PreviousCursor(1)<cr>')

