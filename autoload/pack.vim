vim9script
# vim:fdm=marker fmr={,}
#=======================================================================
# Built-in Package Manager
# Author: jiaobuzuji@163.com
# Github: https://github.com/jiaobuzuji
#=======================================================================

def pack#fresh()
  packadd minpac

  minpac#init()
  minpac#add('k-takata/minpac', {'type':'opt'})
  minpac#add('junegunn/vim-plug', {'type':'opt'}) # vim-plug doc
  minpac#add('yianwillis/vimcdoc', {'type':'opt'})
  minpac#add('vim/killersheep', {'type':'opt'})

  minpac#add('honza/vim-snippets', {'type':'opt'})
  minpac#add('SirVer/ultisnips', {'type':'opt'})

  minpac#add('vim-scripts/DrawIt', {'type':'opt'})
  minpac#add('qpkorr/vim-renamer', {'type':'opt'})
  minpac#add('imc-trading/svlangserver', {'type':'opt', 'do':'npm install'}) # npm install -g @imc-trading/svlangserver

  # minpac#add('skywind3000/vim-auto-popmenu', {'type':'opt'})

  minpac#clean()
  minpac#update()
enddef

