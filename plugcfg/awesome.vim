" Awesome Plugins
" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

"-----------------------------------------------------------------------------
" Plug g:host.'yianwillis/vimcdoc' " {1


"-----------------------------------------------------------------------------
Plug g:host.'mhinz/vim-startify' " {1
let g:startify_session_dir = $VIMFILES .'/session'
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions; [b]uffer, [s]plit, [v]ertical, [t]ab']},
      \ { 'type': 'files',     'header': ['   MRU; Uppercase of b/s/v/t enable the batchmode.']},
      \ { 'type': 'dir',       'header': ['   MRU; [e]mpty, [q]uit; '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
" let g:startify_bookmarks = [ {'v': $VIMFILES}]
let g:startify_commands = [{'h':'tab help usr_41.txt'}]
let g:startify_files_number = 5
let g:startify_change_to_dir = 1
let g:startify_change_to_vcs_root = 0
let g:startify_custom_header = []
let g:startify_session_sort = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0 " Show <empty buffer> and <quit>.
" let g:startify_update_oldfiles = 1
" let g:startify_skiplist = [
"         \ '\.vimgolf',
"         \ '^/tmp',
"         \ '/project/.*/documentation',
"         \ escape(fnamemodify($HOME, ':p'), '\') .'mysecret.txt',
"         \ ]
nnoremap <Leader>sl :Startify<cr>
nnoremap <Leader>ss :SSave<cr>
nnoremap <Leader>sd :SDelete<cr>
nnoremap <Leader>sc :SClose<cr>


"-----------------------------------------------------------------------------
Plug g:host.'preservim/nerdcommenter' " {1
let g:NERDSpaceDelims=1
let g:NERDMenuMode=1
" let g:NERDAltDelims_c = 1 " default delimiter NOTE BUG!!!
let g:NERDCustomDelimiters = {'c': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' } }


"-----------------------------------------------------------------------------
Plug g:host.'mbbill/undotree' " {1
let g:undotree_WindowLayout=2
let g:undotree_DiffpanelHeight=8
let g:undotree_SetFocusWhenToggle=1
nnoremap <leader>tu :UndotreeToggle<cr>


"-----------------------------------------------------------------------------
Plug g:host.'tpope/vim-surround' " {1


"-----------------------------------------------------------------------------
Plug g:host.'junegunn/vim-easy-align' " {1
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
xmap <leader>al <Plug>(LiveEasyAlign)
" Live easy align
nmap <leader>al <Plug>(LiveEasyAlign)
if !exists('g:easy_align_delimiters')
    let g:easy_align_delimiters = {}
endif
let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }


"-----------------------------------------------------------------------------
Plug g:host.'preservim/nerdtree' " {1
let g:NERDTreeShowLineNumbers=1 "show line number
let g:NERDTreeWinPos='left' "show nerdtree in the rigth side
let g:NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let g:NERDTreeWinSize='30'
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeMouseMode=2
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <Leader>nq :let g:NERDTreeQuitOnOpen = g:NERDTreeQuitOnOpen ? 0 : 1<cr>
" nnoremap <leader>nf :CocCommand explorer<CR>


"-----------------------------------------------------------------------------
" Plug g:host.'mhinz/vim-grepper' " {1

Plug g:host.'dyng/ctrlsf.vim' " {1
" let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_default_root = 'project+ww'
let g:ctrlsf_extra_root_markers = ['.git']
let g:ctrlsf_indent = 2
let g:ctrlsf_auto_focus = {"at":"start"}
let g:ctrlsf_confirm_save = 0
" let g:ctrlsf_debug_mode = 1
" let g:ctrlsf_mapping = {
"   \ "next": "n",
"   \ "prev": "N",
"   \ }
let g:ctrlsf_ignore_dir = ['.git','.svn','.hg']
let g:ctrlsf_extra_backend_args = {
  \ 'ag':'--ignore "*.[odODaA]" --ignore "*.out" --ignore "*.hex" --ignore "*.bin"
        \ --ignore "*.exe" --ignore "*.so" --ignore "*.dll"
        \ --ignore "cscope*"',
  \ 'rg':'-g "!*.[odODaA]" -g "!*.out" -g "!*.hex" -g "!*.bin"
        \ -g "!*.exe" -g "!*.so" -g "!*.dll"
        \ -g "!cscope*"'
  \ }
vmap <Leader>vs <Plug>CtrlSFVwordPath
vmap <Leader>vv <Plug>CtrlSFVwordExec
nmap <Leader>vs <Plug>CtrlSFPrompt
nmap <Leader>vv <Plug>CtrlSFCwordExec
nmap <Leader>vV <Plug>CtrlSFCCwordExec
nnoremap <Leader>vj :CtrlSFToggle<CR>


"-----------------------------------------------------------------------------
Plug g:host.'easymotion/vim-easymotion' " {1
let g:EasyMotion_startofline = 0
let g:EasyMotion_show_prompt = 0
let g:EasyMotion_verbose = 0
map W <Plug>(easymotion-lineforward)
map B <Plug>(easymotion-linebackward)
" MultiWindow easymotion for word
nmap <Leader>jw <Plug>(easymotion-overwin-w)
xmap <Leader>jw <Plug>(easymotion-bd-w)
omap <Leader>jw <Plug>(easymotion-bd-w)
" Multi Input Find Motion:s
nmap <Leader>js <Plug>(easymotion-sn)
xmap <Leader>js <Plug>(easymotion-sn)
omap <Leader>js <Plug>(easymotion-sn)
" Multi Input Find Motion:t
nmap <Leader>jt <Plug>(easymotion-tn)
xmap <Leader>jt <Plug>(easymotion-tn)
omap <Leader>jt <Plug>(easymotion-tn)
" MultiWindow easymotion for line
nmap <Leader>jl <Plug>(easymotion-overwin-line)
xmap <Leader>jl <Plug>(easymotion-bd-jk)
omap <Leader>jl <Plug>(easymotion-bd-jk)
" MultiWindow easymotion for char
nmap <Leader>jj <Plug>(easymotion-overwin-f)
xmap <Leader>jj <Plug>(easymotion-bd-f)
omap <Leader>jj <Plug>(easymotion-bd-f)
map <LocalLeader><LocalLeader> <Plug>(easymotion-prefix)

"-----------------------------------------------------------------------------
" Plug g:host.'jiangmiao/auto-pairs' " {1


" Plug g:host.'Raimondi/delimitMate' " {1
" let g:delimitMate_nesting_quotes = ['"','`']
" let g:delimitMate_expand_cr = 0
" let g:delimitMate_expand_space = 0


"-----------------------------------------------------------------------------
" Plug g:host.'luochen1990/rainbow' " {1
" let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle


"-----------------------------------------------------------------------------
" Plug 't9md/vim-choosewin',{'on': '<Plug>(choosewin)'} " {1
"   let g:choosewin_overlay_enable = 1
"   nmap <Leader>wc <Plug>(choosewin)

" Plug 'kshenoy/vim-signature' " {1
"   let g:SignatureEnabledAtStartup    = 1
"   let g:SignatureMarkTextHLDynamic   = 1
"   let g:SignatureMarkerTextHLDynamic = 1

" Plug 'MattesGroeger/vim-bookmarks', { 'on': ['BookmarkShowAll', 'BookmarkToggle', 'BookmarkAnnotate']} " {1
"   let g:bookmark_auto_save = 1
"   let g:bookmark_no_default_key_mappings = 1
"   let g:bookmark_save_per_working_dir = 1
"   let g:bookmark_sign = '>>'
"   let g:bookmark_annotation_sign = '##'
"   let g:bookmark_auto_close = 1
"   "Bookmark annotate
"   nnoremap <leader>mi :BookmarkAnnotate<CR>
"   "Bookmark toggle
"   nnoremap <leader>ma :BookmarkToggle<cr>
"   "Bookmark annotate 
"   vnoremap <leader>mi :<c-u>exec ':BookmarkAnnotate '.getline("'<")[getpos("'<")[2]-1:getpos("'>")[2]-1]<cr>
"   "Bookmark clear
"   nnoremap <leader>mc :BookmarkClear<cr>
"   "Bookmark show all
"   nnoremap <leader>mb :BookmarkShowAll<CR>

" Plug 'ronakg/quickr-preview.vim', { 'for': ['qf']} " {1
"   let g:quickr_preview_keymaps = 0
"   autocmd filetype_group FileType qf nmap <buffer> <down> <down><plug>(quickr_preview)
"   autocmd filetype_group FileType qf nmap <buffer> <up> <up><plug>(quickr_preview)
"   autocmd filetype_group FileType qf nmap <buffer> <Space><Space>  <plug>(quickr_preview)


" Plug 'hecal3/vim-leader-guide' " {1
"   nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
" 
" Plug 'majutsushi/tagbar' " {1
"   let g:tagbar_left=0
"   let g:tagbar_width=30
"   let g:tagbar_sort=0
"   let g:tagbar_autofocus = 1
"   let g:tagbar_compact = 1
"   let g:tagbar_systemenc='cp936'
"   let g:tagbar_iconchars = ['+', '-']
"   let Tlist_Show_One_File = 1
"   let Tlist_Use_Right_Window = 1
"   let Tlist_GainFocus_On_ToggleOpen=1
"   " Open tagbar
"   nnoremap <silent><F9> :TagbarToggle<CR>
"   nnoremap <leader>tt :TagbarToggle<CR>
" 
" Plug 'tracyone/mark.vim' " {1
"   "remove mapping of * and # in mark.vim
"   nmap <Plug>IgnoreMarkSearchNext <Plug>MarkSearchNext
"   nmap <Plug>IgnoreMarkSearchPrev <Plug>MarkSearchPrev
"   nmap <leader>mm <Plug>MarkSet
"   xmap <Leader>mm <Plug>MarkSet
"   nmap <leader>mr <Plug>MarkRegex
"   xmap <Leader>mr <Plug>MarkRegex
"   nmap <leader>mn <Plug>MarkClear
"   xmap <leader>mn <Plug>MarkClear
"   nmap <leader>m? <Plug>MarkSearchAnyPrev
"   nmap <leader>m/ <Plug>MarkSearchAnyNext
" 
" Plug 'itchyny/vim-cursorword' " {1
"   " let g:cursorword = 0
" 
" 
