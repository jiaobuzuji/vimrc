" Vim Key Mapping
" Author:   jiaobuzuji,jiaobuzuji@163.com
" Github:   https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

"leader key
let g:mapleader="\<Space>"
let g:maplocalleader=','

set timeout timeoutlen=1000 ttimeoutlen=100  " allow timing out halfway into a mapping

" in mac osx please set your option key as meta key

" Make something not work {1 
" Don't use Ex mode, use Q for formatting.
" Revert with ":unmap Q".
noremap Q gq

" Because TMUX, we make Ctrl-tab not work in vim
nnoremap <silent><c-TAB> :AT<cr>

" Miscellaneous {1
" map jj to "ESC"
inoremap jj           <c-[>
inoremap j<Space>     j
cnoremap j<Space>     j
cnoremap <expr> j
      \ getcmdline()[getcmdpos()-2] ==# 'j' ? "\<BS>\<C-c>" : 'j'

" map vv to Save Current File
"in terminal ctrl-s is used to stop printf..
" noremap <C-S>	:call te#utils#SaveFiles()<cr>
" vnoremap <C-S>	<C-C>:call te#utils#SaveFiles()<cr>
" inoremap <C-S>	<C-O>:call te#utils#SaveFiles()<cr>
nnoremap vv	  :update<cr>
vnoremap vv	  <C-C>:update<cr>
inoremap vv	  <C-[>:update<cr>
" inoremap v<Space>     v

" current Date & Time
nnoremap <Leader>dt "=strftime("%Y-%m-%d %H:%M:%S")<CR>p
" inoremap <Leader>dt <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" always use "0" register
vnoremap [p "0p
 
" y$ -> Y Make Y behave like other capitals
nnoremap Y y$

" Insert new line in normal mode
nnoremap tt o<c-[>0"6Dk

" nnoremap <silent> <BS> <C-o>

" Format Current File
nnoremap <silent> <c-F3> :set ff=unix<CR>:%s/\s\+$//<CR>

" no highlight
"nnoremap <Leader>nq :nohls<CR>:MarkClear<cr>:redraw!<cr>
nnoremap <Leader>/ :nohlsearch<CR>

"visual mode hit tab forward indent ,hit shift-tab backward indent
"Reselect visual block after indent/outdent.
vnoremap <TAB>    >gv  
vnoremap <s-TAB>  <gv 
vnoremap <        <gv
vnoremap >        >gv
 
" Mouse mode toggle
" call te#meta#map('nnoremap','m',':call MouseToggle()<cr>')   
" nnoremap <leader>tm :call te#utils#OptionToggle('mouse',['a',''])<cr>

" Move the lines to below/before
call te#meta#map('xnoremap','j',":m '>+1<CR>gv=gv")
call te#meta#map('xnoremap','k',":m '<-2<CR>gv=gv")
xnoremap <Leader>mj :m '>+1<CR>gv=gv
xnoremap <Leader>mk :m '<-2<CR>gv=gv
nnoremap <Leader>mj :m .+1<CR>==
nnoremap <leader>mk :m .-2<CR>==

" Using <Plug> instead of
vnoremap  *  y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vnoremap  #  y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

" copy,paste and cut 
nnoremap <S-Insert> "+gP
cnoremap <S-Insert>	<C-R>+
cnoremap <C-V>	    <C-R>+
inoremap <c-v>	    <C-o>"+gp

"cd to current buffer's path
" nnoremap <silent> <leader>fc :call te#utils#goto_cur_file(2)<cr> 
nnoremap <c-F7> :cd %:h<cr> 

" verilog instance {1
vnoremap <silent> <c-F3> :s#^\s*\(input\\|output\)\(\s\+\(wire\\|reg\)\)\?\s*\(\[.\+\]\s*\)\?#.<CR>gv:s#^\s*\(\/\/.*\)#    \1<CR>gv:s#^\.\(\<\w\+\>\)\(\s*\)#    .\1\2   (\1\2   )<CR>

" Move cursor {1
" move cursor in Insert mode
call te#meta#map('inoremap','h','<Left>')
call te#meta#map('inoremap','l','<Right>')
call te#meta#map('inoremap','j','<Down>')
call te#meta#map('inoremap','k','<Up>')
inoremap        <C-A> <C-O>^
inoremap   <C-X><C-A> <C-A>
inoremap <expr> <C-E> col('.')>strlen(getline('.'))<bar><bar>pumvisible()?"\<Lt>C-E>":"\<Lt>End>"

" move cursor in Command line
call te#meta#map('cnoremap','l','<right>')
call te#meta#map('cnoremap','j','<down>')
call te#meta#map('cnoremap','k','<up>')
call te#meta#map('cnoremap','b','<S-left>')
cnoremap        <C-A> <Home>
cnoremap   <C-X><C-A> <C-A>

" multiple windows and tabs {1
" Quit Vim
nnoremap <Leader>qa :qa<cr>
" " close all buffer
" map <Leader>ba :bufdo bd<cr>

nnoremap <leader>mw :call te#tools#max_win()<cr>

" open quickfix windows
nnoremap <leader>qf :botright copen<cr>
nnoremap <leader>qc q:
nnoremap <leader>qd q/

" move between windows
call te#meta#map('nnoremap','h','<C-w>h')
call te#meta#map('nnoremap','l','<C-w>l')
call te#meta#map('nnoremap','j','<C-w>j')
call te#meta#map('nnoremap','k','<C-w>k')
" vertical open window
nnoremap <Leader>wv :vsp<cr>
" vertical open window then focus the new one
nnoremap <Leader>wV :vsp<cr><C-w>l
" horizontal open window 
nnoremap <Leader>ws :sp<cr>
" horizontal open window then focus the new one
nnoremap <Leader>wS :sp<cr><C-w>j
" maxsize of current windows
nnoremap <Leader>wo :only<cr>
" quit current windows
nnoremap <Leader>wd <C-w>q
" switch between two windows alternately
nnoremap <Leader>w<tab> <C-w><C-p>
" switch between two windows.
nnoremap <Leader>ww <C-w><C-w>
" move to left win
nnoremap <Leader>wh <C-w>h
" move to right win
nnoremap <Leader>wl <C-w>l
" move down win
nnoremap <Leader>wj <C-w>j
" move up win
nnoremap <Leader>wk <C-w>k
" move to very left win
nnoremap <Leader>wH <C-w>H
" move to very right win
nnoremap <Leader>wL <C-w>L
" move to very down win
nnoremap <Leader>wJ <C-w>J
" move to very up win
nnoremap <Leader>wK <C-w>K
" rotate the window backward
nnoremap <Leader>wR <C-w>R
" rotate the window forward
nnoremap <Leader>wr <C-w>r
" Move the current window to a new tab page.
nnoremap <Leader>wt <C-w>T

" change the windows size. f9, f10, f11, f12 --> h, j, k, l
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
" noremap <silent> <leader>w. :vertical resize +10<CR>
" noremap <silent> <leader>w, :vertical resize -10<CR>
" noremap <silent> <leader>w- :resize -10<CR>
" noremap <silent> <leader>w= :resize +10<CR>

" call te#meta#map('noremap','1',':call te#utils#tab_buf_switch(1)<cr>')
" call te#meta#map('noremap','2',':call te#utils#tab_buf_switch(2)<cr>')
" call te#meta#map('noremap','3',':call te#utils#tab_buf_switch(3)<cr>')
" call te#meta#map('noremap','4',':call te#utils#tab_buf_switch(4)<cr>')
" call te#meta#map('noremap','5',':call te#utils#tab_buf_switch(5)<cr>')
" call te#meta#map('noremap','6',':call te#utils#tab_buf_switch(6)<cr>')
" call te#meta#map('noremap','7',':call te#utils#tab_buf_switch(7)<cr>')
" call te#meta#map('noremap','8',':call te#utils#tab_buf_switch(8)<cr>')
" call te#meta#map('noremap','9',':call te#utils#tab_buf_switch(9)<cr>')
" nnoremap <leader>1 :call te#utils#tab_buf_switch(1)<cr>
" nnoremap <leader>2 :call te#utils#tab_buf_switch(2)<cr>
" nnoremap  <leader>3 :call te#utils#tab_buf_switch(3)<cr>
" nnoremap  <leader>4 :call te#utils#tab_buf_switch(4)<cr>
" nnoremap  <leader>5 :call te#utils#tab_buf_switch(5)<cr>
" nnoremap  <leader>6 :call te#utils#tab_buf_switch(6)<cr>
" nnoremap  <leader>7 :call te#utils#tab_buf_switch(7)<cr>
" nnoremap  <leader>8 :call te#utils#tab_buf_switch(8)<cr>
" nnoremap  <leader>9 :call te#utils#tab_buf_switch(9)<cr>

" " switch to last open tab or buffer
" nnoremap <Leader><tab> :call te#utils#tab_buf_switch(-2)<cr>
" "switch previous tab or buftab
" nnoremap <Left> :call te#utils#tab_buf_switch(0)<cr>
" "switch next tab or buftab
" nnoremap <Right> :call te#utils#tab_buf_switch(-1)<cr>
" " next buffer or tab
" nnoremap <Leader>bn :call te#utils#tab_buf_switch(-1)<cr>
" " previous buffer or tab
" nnoremap <Leader>bp :call te#utils#tab_buf_switch(0)<cr>
" " delete buffer
" nnoremap <Leader>bk :bdelete<cr>
" "buffer only
" nnoremap <leader>bo :call te#tools#buf_only('', '')<cr>

" VimScript Help {1
" open eval.txt
nnoremap <Leader>he :tabnew<cr>:h eval.txt<cr>:only<cr>
" open vim script help
nnoremap <Leader>hp :tabnew<cr>:h usr_41.txt<cr>:only<cr>
" open vim function list
nnoremap <Leader>hf :tabnew<cr>:h function-list<cr>:only<cr>

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
" nnoremap <Leader>as :call te#tools#shell_pop(0x1)<cr>
" noremap <F4> :call te#tools#shell_pop(0x1)<cr>
" " Open vimshell or neovim's emulator in vertical window
" nnoremap <Leader>av :call te#tools#shell_pop(0x2)<cr>
" " Open vimshell or neovim's emulator in new tab
" nnoremap <Leader>ns :call te#tools#shell_pop(0x4)<cr>
" 
" call te#meta#map('inoremap','u','<c-\><c-o>:call te#tools#PreviousCursor(6)<cr>')
" call te#meta#map('inoremap','d','<c-\><c-o>:call te#tools#PreviousCursor(7)<cr>')
" call te#meta#map('nnoremap','d',':call te#tools#PreviousCursor(7)<cr>')
" call te#meta#map('nnoremap','u',':call te#tools#PreviousCursor(6)<cr>')
" call te#meta#map('inoremap','m','<c-\><c-o>:call te#tools#PreviousCursor(0)<cr>')
" call te#meta#map('inoremap','n','<c-\><c-o>:call te#tools#PreviousCursor(1)<cr>')
" call te#meta#map('nnoremap','m',':call te#tools#PreviousCursor(0)<cr>')
" call te#meta#map('nnoremap','n',':call te#tools#PreviousCursor(1)<cr>')
