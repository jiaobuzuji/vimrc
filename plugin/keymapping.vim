vim9script
# vim:fdm=marker fmr={,}
#=======================================================================
# Vim Key Mapping
# Author: jiaobuzuji@163.com
# Github: https://github.com/jiaobuzuji
#=======================================================================

# Misc {1
# Don't use Ex mode, use Q for formatting.  Revert with ":unmap Q".
noremap <silent> Q gq

# CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
# so that you can undo CTRL-U after inserting a line break.  Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>
# faster enter command line mode
noremap , :
nnoremap <silent> Y y$
nnoremap <leader>/ <cmd>nohlsearch<cr>
# Insert new line in normal mode
nnoremap tt o<space><c-u><c-[>
# visual mode hit tab forward indent ,hit shift-tab backward indent
# Reselect visual block after indent/outdent.
vnoremap < <gv
vnoremap > >gv
# Format Current File (without <cmd>retab<cr>)
nnoremap <silent> <c-F3> <cmd>set ff=unix<cr><cmd>%s/\s\+$//<cr>

# 'Save' and 'Esc' {1
inoremap jj           <c-[>
inoremap j<space>     j 

nnoremap vv   <cmd>update<cr>
vnoremap vv   <c-c><cmd>update<cr>
inoremap vv   <c-[><cmd>update<cr>
inoremap v<space>     v 

# search, substitute,copy,paste and cut {1
nnoremap <leader>ss :%s/<C-R>//
vnoremap <leader>ss :s/<C-R>//
# Using <Plug> instead of
vnoremap  *  y/<c-r>=escape(@", '\\/.*$^~[]')<cr><cr>
vnoremap  #  y?<c-r>=escape(@", '\\/.*$^~[]')<cr><cr>
# copy,paste and cut 
nnoremap <s-insert> "+gp
cnoremap <s-insert> <c-r>+
cnoremap <c-v>      <c-r>+
inoremap <c-v>      <c-o>"+gp

# Quit Vim {1
nnoremap <silent> <leader>ww <cmd>qa<cr>
nnoremap <silent> <leader>wd <C-w>q
nnoremap <silent> <leader>wh <c-w>h
nnoremap <silent> <leader>wj <c-w>j
nnoremap <silent> <leader>wk <c-w>k
nnoremap <silent> <leader>wl <c-w>l

# tab,windows, cursor move {1
nnoremap <silent> <leader>1  1gt
nnoremap <silent> <leader>2  2gt
nnoremap <silent> <leader>3  3gt
nnoremap <silent> <leader>4  4gt
nnoremap <silent> <leader>5  5gt
nnoremap <silent> <leader>6  6gt
nnoremap <silent> <leader>7  7gt
nnoremap <silent> <leader>8  8gt
nnoremap <silent> <leader>9  9gt
# faster scroll
nnoremap <silent> <m-h> 8h
nnoremap <silent> <m-j> 8j
nnoremap <silent> <m-k> 8k
nnoremap <silent> <m-l> 8l
xnoremap <silent> <m-h> 8h
xnoremap <silent> <m-j> 8j
xnoremap <silent> <m-k> 8k
xnoremap <silent> <m-l> 8l
# move cursor in Insert mode
inoremap <silent> <m-h> <left>
inoremap <silent> <m-l> <right>
inoremap <silent> <m-k> <up>
inoremap <silent> <m-j> <down>
inoremap        <c-a> <c-o>^
inoremap   <c-x><c-a> <c-a>
inoremap <expr> <c-e> col('.')>strlen(getline('.'))<bar><bar>pumvisible()?"\<lt>c-e>":"\<lt>end>"
# move cursor in Command line
cnoremap   <m-h> <s-left>
cnoremap   <m-l> <s-right>
cnoremap   <m-k> <up>
cnoremap   <m-j> <down>
cnoremap        <c-a> <home>
cnoremap   <c-x><c-a> <c-a>
# Emacs like
cnoremap   <c-b> <left>
cnoremap   <c-f> <right>
cnoremap   <c-p> <up>
cnoremap   <c-n> <down>
# last cursor position
# nnoremap <silent> <BS> <C-o>

# terminal
tnoremap <silent> <m-h> <left>
tnoremap <silent> <m-l> <right>
tnoremap <silent> <m-k> <up>
tnoremap <silent> <m-j> <down>

