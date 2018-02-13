" denite option
      " \ 'highlight_matched_char' : 'MoreMsg',
      " \ 'highlight_matched_range' : 'MoreMsg',
let s:denite_options = {
      \ 'default' : {
      \ 'winheight' : 15,
      \ 'auto-resize' : 'true',
      \ 'direction': 'rightbelow',
      \ 'statusline' : v:false,
      \ 'prompt' : '➭',
      \ }}

function! s:profile(opts) abort
  for fname in keys(a:opts)
    for dopt in keys(a:opts[fname])
      call denite#custom#option(fname, dopt, a:opts[fname][dopt])
    endfor
  endfor
endfunction

call s:profile(s:denite_options)

" buffer source
call denite#custom#var(
      \ 'buffer',
      \ 'date_format', '%m-%d-%Y %H:%M:%S')

" denite command
if executable('rg')
  " For ripgrep
  " Note: It is slower than ag
  call denite#custom#var('file_rec', 'command',
        \ ['rg', '--hidden', '--files', '--glob', '!.git', '--glob', '']
        \ )
elseif executable('ag')
  " Change file_rec command.
  call denite#custom#var('file_rec', 'command',
        \ ['ag' , '--nocolor', '--nogroup', '-g', '']
        \ )
endif

call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command',
    \ ['git', 'ls-files', '-co', '--exclude-standard'])

" FIND and GREP COMMANDS
if executable('rg')
  " Ripgrep command on grep source
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',
        \ ['--vimgrep', '--no-heading'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
elseif executable('ag')
  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'default_opts',
        \ [ '--vimgrep', '--smart-case' ])
endif

" enable unite menu compatibility
call denite#custom#var('menu', 'unite_source_menu_compatibility', 1)

" KEY MAPPINGS
      " \  ['jk', '<denite:enter_mode:normal>', 'noremap'],
let s:insert_mode_mappings = [
      \  ['<c-j>', '<denite:move_to_next_line>', 'noremap'],
      \  ['<c-k>', '<denite:move_to_previous_line>', 'noremap'],
      \  ['<c-x>', '<denite:do_action:split>', 'noremap'],
      \  ['<c-t>', '<denite:do_action:tabopen>', 'noremap'],
      \  ['<c-v>', '<denite:do_action:vsplit>', 'noremap'],
      \  ['<c-z>', '<denite:toggle_select_down>', 'noremap'],
      \  ['<Esc>', '<denite:enter_mode:normal>', 'noremap'],
      \  ['<C-N>', '<denite:assign_next_matched_text>', 'noremap'],
      \  ['<C-P>', '<denite:assign_previous_matched_text>', 'noremap'],
      \  ['<Up>', '<denite:assign_previous_text>', 'noremap'],
      \  ['<Down>', '<denite:assign_next_text>', 'noremap'],
      \  ['<C-Y>', '<denite:redraw>', 'noremap'],
      \ ]

let s:normal_mode_mappings = [
      \   ["'", '<denite:toggle_select_down>', 'noremap'],
      \   ['<C-n>', '<denite:jump_to_next_source>', 'noremap'],
      \   ['<C-p>', '<denite:jump_to_previous_source>', 'noremap'],
      \   ['gg', '<denite:move_to_first_line>', 'noremap'],
      \   ['<c-t>', '<denite:do_action:tabopen>', 'noremap'],
      \   ['<c-v>', '<denite:do_action:vsplit>', 'noremap'],
      \   ['<c-x>', '<denite:do_action:split>', 'noremap'],
      \   ['q', '<denite:quit>', 'noremap'],
      \   ['r', '<denite:redraw>', 'noremap'],
      \ ]

for s:m in s:insert_mode_mappings
  call denite#custom#map('insert', s:m[0], s:m[1], s:m[2])
endfor
for s:m in s:normal_mode_mappings
  call denite#custom#map('normal', s:m[0], s:m[1], s:m[2])
endfor

unlet s:m s:insert_mode_mappings s:normal_mode_mappings
