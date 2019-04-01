function! ToggleSpell()
    if &spell
        set nospell
    else
        set spell
    endif
endfunction

function! StripTrailingWhiteSpace()
    %s/\s\+$//e
endfunction
