
function! s:addToMasterIndex(...)
    call add(s:master, a:1)
    return s:master
endfunction
