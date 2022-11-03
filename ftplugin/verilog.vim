vim9script
#=======================================================================
# Author: jiaobuzuji@163.com
# Github: https://github.com/jiaobuzuji
#=======================================================================
def JbzjHDLFormat()
  for lnum in range(line('v'), line('.'))
    var line = getline(lnum)
    var repl = substitute(substitute(substitute(line,
      '^\s*\(input\|output\)\(\s\+\(wire\|reg\)\)\?\s*\(\[.\{-1,}\]\s*\)\?', '.', ''),
      '^\s*\(\/\/.*\)', '    \1', 'e'),
      '^\.\(\<\w\+\>\)\(\s*\)', '    .\1\2   (\1\2   )', '')
    setline(lnum, repl)
  endfor
  # <cmd>s#^\s*\(input\\|output\)\(\s\+\(wire\\|reg\)\)\?\s*\(\[.\{-1,}\]\s*\)\?#.<cr>gv<cmd>s#^\s*\(\/\/.*\)#    \1#e<cr>gv<cmd>s#^\.\(\<\w\+\>\)\(\s*\)#    .\1\2   (\1\2   )<cr>
enddef

setlocal foldmethod=indent
setlocal tabstop=4  #number of spaces a <Tab> in the text stands for
setlocal shiftwidth=4 #number of spaces used for each step of (auto)indent
setlocal softtabstop=4  #if non-zero, number of spaces to insert for a <Tab>

vnoremap <buffer><silent> <c-f4> <cmd>call <SID>JbzjHDLFormat()<cr>
# nnoremap <buffer><silent> <c-f2> a<c-r>=strftime("%y-%m-%d %h:%m:%s")<cr>
nnoremap <buffer><silent> <c-j> <cmd>cn<cr>
nnoremap <buffer><silent> <c-k> <cmd>cp<cr>
nnoremap <buffer><silent> <c-l> <cmd>ccl<cr>

# b:verilog_indent_modules = 1

#------------------------------------------------------------------------------------
# g:verilog_spyglass = 1
def JbzjHDLMake()
  ccl
  cd sim
  silent make
  # sleep 100m
  # echo "oh my god!"
  cd ..
  cw
  wincmd k
enddef

if (exists("g:verilog_spyglass"))
  #------------------------------------------------------------------------------------
  # spyglass
  # Error level formats
  setlocal errorformat=%.%#\ %\\+%tATAL\ %\\+%[a-zA-Z0-9]%\\+\ %\\+%f\ %\\+%l\ %\\+%n\ %\\+%m
  setlocal errorformat+=%.%#\ %\\+%tRROR\ %\\+%[a-zA-Z0-9]%\\+\ %\\+%f\ %\\+%l\ %\\+%n\ %\\+%m
  setlocal errorformat+=%.%#\ %\\+Syntax\ %\\+%f\ %\\+%l\ %\\+%m
  # Warning level formats
  setlocal errorformat+=%.%#\ %\\+%tARNING\ %\\+%[a-zA-Z0-9]%\\+\ %\\+%f\ %\\+%l\ %\\+%n\ %\\+%m
  # keymapping
  nnoremap <buffer><silent> <f5> <cmd>vim9 <SID>JbzjHDLMake()<cr>
elseif (exists("g:verilog_iverilog"))
  #------------------------------------------------------------------------------------
  # iverilog
  # Error level formats
  setlocal errorformat=%f\\:%l:\ %m
  nnoremap <buffer><silent> <f5> <cmd>cd sim<cr><cmd>make<cr><cmd>cd ..<cr><cmd>cw<cr>
else
  #------------------------------------------------------------------------------------
  # vcs
  # list of formats for error messages
  setlocal errorformat=%EError-\[%.%\\+\]\ %m
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
  nnoremap <buffer><silent> <f5> <cmd>call <SID>JbzjHDLMake()<cr>
endif

#------------------------------------------------------------------------------------
# set makeprg = make

