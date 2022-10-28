
function! SetSession(...)
    if (a:0 == 0)
        let l:sz = input('Session Name>> ')
    else
        let l:sz = a:1
    endif
    let $VIMSESSION=l:sz
    let $VIMWINDOW=l:sz
    let $VIMSPLIT=l:sz
    call ShowSession()
endfunction
