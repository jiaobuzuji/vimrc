" Vim Gui : colorscheme,menu,font...
" Author:   jiaobuzuji,jiaobuzuji@163.com
" Github:   https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,} fen

" Gui releate {1
if te#env#IsGui()
  set spell          " Spell checking on

  " Font setting {2
  if (te#env#IsMac())
      set guifont=Consolas:h16
  elseif te#env#IsUnix()
      set guifont=Consolas\ 11
      set guifontwide=YaHei_Mono_Hybird_Consolas\ 10.5
  else
      set guifont=Consolas:h12:cANSI
      set guifontwide=YaHei_Mono:h11.5:cGB2312
      " if has("directx")
      "     set renderoptions=type:directx
      " endif
  endif

"  " if g:enable_powerline_fonts.cur_val ==# 'on'
"  "     if te#env#IsMacVim()
"  "         set guifont=YaHei\ Consolas\ Hybrid:h14
"  "         set guifontwide=YaHei\ Consolas\ Hybrid:h14
"  "     elseif te#env#IsUnix()
"  "         set guifont=YaHei\ Consolas\ Hybrid\ 12
"  "         set guifontwide=YaHei\ Consolas\ Hybrid\ 12
"  "     else
"  "         set guifont=Monaco:h12:cANSI
"  "         set guifontwide=YaHei_Consolas_Hybrid:h12:cGB2312
"  "     endif
"  " endif
  " }

  " Menu config, turn on this option as well {2
  set guioptions-=b "Bottom (horizontal) scrollbar
  set guioptions-=m "whether use menu
  set guioptions-=r "whether show the rigth scroll bar
  set guioptions-=L "whether show the left scroll bar
  set guioptions-=T "whether show toolbar or not
  set guioptions-=e "whether use tabpage
  set guioptions+=c
  " Menu and toolbar toggle(MacVIm and gvim)
  func! s:MenuToggle()
      if &guioptions =~# '\a*[mT]\a*[mT]'
          set guioptions-=mT
      else
          set guioptions+=mT
      endif
  endfunc
  nnoremap <c-F8>     :call <SID>MenuToggle()<cr>
  nnoremap <Leader>tg :call <SID>MenuToggle()<cr>
  " }

else
  set novb nospell " Disable bell, Disable spell
  set termguicolors     " enable true colors support
  set t_vb=
  set t_ut=
  set t_Co=256
endif

" colorscheme {1
"some awesome vim colour themes
" Plug 'sjl/badwolf' " {2
" Plug 'iCyMind/NeoSolarized' " {2
" Plug 'tomasr/molokai' " {2
" Plug 'morhetz/gruvbox' " {2
" Plug 'NLKNguyen/papercolor-theme' " {2
" Plug 'nanotech/jellybeans.vim' " {2
"   let g:jellybeans_overrides = {
"   \    'background': { 'guibg': '000000' },
"   \    'StatusLine': {'guibg': '282828', 'guifg': 'c7c7c7', 'ctermbg': '235', 'ctermfg': '255'},
"   \    'StatusLineNC': {'guibg': '3a3a3a', 'guifg': '808080', 'ctermbg': '236', 'ctermfg': '244'},
"   \}
" Plug 'vim-scripts/desert256.vim' " {2
"   set background=dark

" Plug 'liuchengxu/space-vim-dark' " {2
" Plug 'ayu-theme/ayu-vim' " {2
"   " let ayucolor="light"  " for light version of theme
"   " let ayucolor="mirage" " for mirage version of theme
"   let ayucolor="dark"   " for dark version of theme

"}

" TODO {1
"    "toolbar
"    if has('toolbar')
"        if exists('*Do_toolbar_tmenu')
"            delfun Do_toolbar_tmenu
"        endif
"        fun Do_toolbar_tmenu()
"            tmenu ToolBar.Open		Open File
"            tmenu ToolBar.Save		Save File
"            tmenu ToolBar.SaveAll	Save All
"            tmenu ToolBar.Print		Print
"            tmenu ToolBar.Undo		Undo
"            tmenu ToolBar.Redo		Redo
"            tmenu ToolBar.Cut		Cut
"            tmenu ToolBar.Copy		Copy
"            tmenu ToolBar.Paste		Paste
"            tmenu ToolBar.Find		Find&Replace
"            tmenu ToolBar.FindNext	Find Next
"            tmenu ToolBar.FindPrev	Find Prev
"            tmenu ToolBar.Replace	Replace
"            tmenu ToolBar.LoadSesn	Load Session
"            tmenu ToolBar.SaveSesn	Save Session
"            tmenu ToolBar.RunScript	Run a Vim Script
"            tmenu ToolBar.Make		Make
"            tmenu ToolBar.Shell		Shell
"            tmenu ToolBar.RunCtags	ctags! -R
"            tmenu ToolBar.TagJump	Jump to next tag
"            tmenu ToolBar.Help		Help
"            tmenu ToolBar.FindHelp	Search Help
"        endfun
"    endif

"  " mouse
"  " Set up the gui cursor to look nice
"  set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
"  amenu PopUp.-SEP3-	<Nop>
"  ""extend", "popup" or "popup_setpos"; what the right
"  set mousemodel=popup_setpos
"  amenu PopUp.&Undo :UndotreeToggle<CR>
"  amenu PopUp.&Goto\ Definition ::call te#complete#goto_def("")<cr>
"  amenu PopUp.&Find\ Text :call neomakemp#global_search('\b'.expand("<cword>").'\b',0x1)<cr>
"  amenu PopUp.&Open\ Header/Source :AT<cr>
"  amenu PopUp.&Hightlight :execute "normal ". "\<Plug>MarkSet"<cr>

