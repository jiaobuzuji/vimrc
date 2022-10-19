vim9script
# Author: jiaobuzuji@163.com
# Github: https://github.com/jiaobuzuji
#=======================================================================

vnoremap <silent> <c-f4> :s#^\s*\(input\\|output\)\(\s\+\(wire\\|reg\)\)\?\s*\(\[.\{-1,}\]\s*\)\?#.<cr>gv:s#^\s*\(\/\/.*\)#    \1#e<cr>gv:s#^\.\(\<\w\+\>\)\(\s*\)#    .\1\2   (\1\2   )<cr>
# nnoremap <silent> <c-f2> a<c-r>=strftime("%y-%m-%d %h:%m:%s")<cr>

b:verilog_indent_modules = 1

# let g:verilog_spyglass=1
if (exists("g:verilog_spyglass"))
  #------------------------------------------------------------------------------------
  # spyglass
  # Error level formats
  setlocal errorformat =%.%#\ %\\+%tATAL\ %\\+%[a-zA-Z0-9]%\\+\ %\\+%f\ %\\+%l\ %\\+%n\ %\\+%m
  setlocal errorformat+=%.%#\ %\\+%tRROR\ %\\+%[a-zA-Z0-9]%\\+\ %\\+%f\ %\\+%l\ %\\+%n\ %\\+%m
  setlocal errorformat+=%.%#\ %\\+Syntax\ %\\+%f\ %\\+%l\ %\\+%m
  # Warning level formats
  setlocal errorformat+=%.%#\ %\\+%tARNING\ %\\+%[a-zA-Z0-9]%\\+\ %\\+%f\ %\\+%l\ %\\+%n\ %\\+%m
  # keymapping
  nnoremap <buffer><silent> <f5> <cmd>cd lint<cr><cmd>make<cr><cmd>cd ..<cr><cmd>cw<cr>
else
  #------------------------------------------------------------------------------------
  # vcs
  # list of formats for error messages
  setlocal errorformat =%EError-\[%.%\\+\]\ %m
  setlocal errorformat+=%C%m\"%f\"\\,\ %l%.%#
  setlocal errorformat+=%C%f\\,\ %l
  setlocal errorformat+=%C%\\s%\\+%l:\ %m\\,\ column\ %c
  setlocal errorformat+=%C%\\s%\\+%l:\ %m
  setlocal errorformat+=%C%m\"%f\"\\,%.%#
  setlocal errorformat+=%Z%p^                      #Column pointer
  setlocal errorformat+=%C%m                       #Catch all rule
  setlocal errorformat+=%Z                         #Error message end on empty line
  # Warning level formats
  setlocal errorformat+=%WWarning-\[%.%\\+]\\$
  setlocal errorformat+=%-WWarning-[LCA_FEATURES_ENABLED]\ Usage\ warning    #Ignore LCA enabled warning
  setlocal errorformat+=%WWarning-\[%.%\\+\]\ %m
  # Lint level formats
  setlocal errorformat+=%I%tint-\[%.%\\+\]\ %m
  # keymapping
  nnoremap <buffer><silent> <f5> <cmd>cd sim<cr><cmd>make<cr><cmd>cd ..<cr><cmd>cw<cr>
endif


# #------------------------------------------------------------------------------------
# # iverilog
# # Error level formats
# set errorformat=%f\\:%l:\ %m

#------------------------------------------------------------------------------------
# set makeprg = make

