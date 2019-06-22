function! ToggleSpell()
    if &spell
        set nospell
    else
        set spell
    endif
endfunction

function! ToggleTextWidth()
    if &tw == 0
        set tw=80
    else
        set tw=0
    endif
endfunction

function! StripTrailingWhiteSpace()
    %s/\s\+$//e
endfunction
