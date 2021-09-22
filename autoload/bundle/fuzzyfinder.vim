" Author: jiaobuzuji@163.com
" Github: https://github.com/jiaobuzuji
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim:fdm=marker fmr={,}

function! bundle#fuzzyfinder#load() abort
  return 1
endfunction

"-----------------------------------------------------------------------------
let s:is_win = has('win32') || has('win64')

"-----------------------------------------------------------------------------
Plug 'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'} " {1
Plug 'junegunn/fzf.vim'
Plug 'tracyone/fzf-funky',{'on': 'FzfFunky'}
let g:fzf_buffers_jump = 1
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

function! s:fzfrun_dir_sink(item) abort
  if len(a:item) < 2 | return | endif
  let l:pos = stridx(a:item[1], ' ')
  let l:file_path = a:item[1][pos+1:-1]
  if a:item[0] ==? 'tab'
    " :redraw!
    execute 'cd '. l:file_path
    call s:fzfrun_dir()
  elseif a:item[0] ==? 'shift-tab'
    execute 'cd ..'
    call s:fzfrun_dir()
  else
    execute 'cd '. l:file_path
  endif
endfunction

function! s:fzfrun_dir() abort
  let short = fnamemodify(getcwd(), ':~:.')
  if !has('win32unix')
    let short = pathshorten(short)
  endif
  let slash = (s:is_win && !&shellslash) ? '\' : '/'
  let dir =  empty(short) ? '~'.slash : short . (short =~ escape(slash, '\').'$' ? '' : slash)
  let l:prompts = strwidth(dir) < &columns / 2 - 20 ? dir : '> '
  let l:run_dict = {
        \ 'source': 'find -maxdepth 2 -type d',
        \ 'sink*' : function('<SID>fzfrun_dir_sink'),
        \ 'window':{'width':0.8,'height':0.6},
        \ 'options':'--ansi --expect=tab,shift-tab --delimiter : '. '--prompt '. prompts,
        \ }
  if s:is_win
    call extend(l:run_dict,{'source':'dir /b /a:d'})
  endif
  call fzf#run(l:run_dict)
endfunction

nnoremap <leader><leader> :Files<cr>
nnoremap <leader>fk :History:<cr>
nnoremap <leader>f/ :History/<cr>
nnoremap <leader>fh :History<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fr :Rg<cr>
nnoremap <leader>fs :Snippets<cr>
nnoremap <leader>fw :Windows<cr>
nnoremap <leader>fm :Marks<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>ft :Tags<cr>
nnoremap <leader>fc :Commands<cr>
nnoremap <leader>fgc :Commits<cr>
nnoremap <leader>fgf :GFiles<cr>
nnoremap <leader>ff  :FzfFunky<cr>
" nnoremap <leader>fmp :Maps<cr>
" nnoremap <leader>fht :Helptags<cr>
nnoremap <leader>fd  :call <SID>fzfrun_dir()<cr>


"-----------------------------------------------------------------------------
" Plug 'Yggdroot/LeaderF' " {1
" Plug 'Yggdroot/LeaderF-marks',{'on': 'LeaderfMarks'}
" nnoremap <leader><leader> :LeaderfFile<cr>
" nnoremap <leader>fh :LeaderfMru<cr>
" nnoremap <leader>fb :LeaderfBuffer<Cr>
" nnoremap <leader>fm :LeaderfMarks<Cr>
" nnoremap <leader>ff :LeaderfFunction<cr>
" nnoremap <leader>fl :LeaderfLines<cr>
" nnoremap <leader>fs :LeaderfSelf<cr>
" nnoremap <leader>ft :LeaderfBufTag<cr>
" let g:Lf_CacheDiretory=$VIMFILES
" let g:Lf_DefaultMode='FullPath'
" let g:Lf_StlSeparator = { 'left': '', 'right': '' }
" let g:Lf_UseMemoryCache = 0

"-----------------------------------------------------------------------------
" Plug 'liuchengxu/vim-clap' " {1

