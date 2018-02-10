function! te#tools#max_win() abort
    if te#env#IsMacVim()
        set fullscreen
    elseif te#env#IsUnix()
        :win 1999 1999
        silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
    elseif te#env#IsWindows()
        :simalt~x "maximize window
    else
        :win 1999 1999
    endif
endfunction

