function! bundle#PackInit() abort
  packadd minpac
  " minpac plugin
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  " Additional plugins here.
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('mbbill/undotree')
  call minpac#add('scrooloose/nerdcommenter')
endfunction

