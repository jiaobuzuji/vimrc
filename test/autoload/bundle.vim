function! bundle#PackInit(...) abort
  if a:0 > 0
    let l:host = a:0
  else
    "let l:host = '' " defautl:https://github.com/
    let l:host = 'https://github.com.cnpmjs.org/' " mirror
  endif

  " git clone --depth=1 https://github.com/k-takata/minpac ~/.vim/pack/minpac/opt/minpac
  packadd minpac
  " minpac plugin
  call minpac#init()
  call minpac#add(l:host . 'k-takata/minpac', {'type': 'opt'})
  " Additional plugins here.
  call minpac#add(l:host . 'mbbill/undotree')
  call minpac#add(l:host . 'scrooloose/nerdcommenter')
  call minpac#add(l:host . 'scrooloose/nerdtree')
  call minpac#add(l:host . 'nanotech/jellybeans.vim') " colorscheme
  call minpac#add(l:host . 'itchyny/lightline.vim')
 "" colorscheme
 "call minpac#add(l:host . 'sjl/badwolf', {'type': 'opt'})
 "call minpac#add(l:host . 'altercation/vim-colors-solarized', {'type': 'opt'})
 "call minpac#add(l:host . 'tomasr/molokai', {'type': 'opt'})
 "call minpac#add(l:host . 'morhetz/gruvbox', {'type': 'opt'})
 "call minpac#add(l:host . 'NLKNguyen/papercolor-theme', {'type': 'opt'})
 "call minpac#add(l:host . 'KabbAmine/yowish.vim', {'type': 'opt'})
 "" status line
 "call minpac#add(l:host . 'vim-airline/vim-airline', {'type': 'opt'})
  call minpac#add(l:host . 'yianwillis/vimcdoc', {'type': 'opt'})

endfunction


"   curl -fLo ~/.vim/pack/plug/opt/plug/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"packadd plug
"call plug#begin('~/.vim/pack/plug/start/')
"Plug 'vim-airline/vim-airline'
"Plug 'mbbill/undotree'
"Plug 'scrooloose/nerdcommenter'
"call plug#end()

