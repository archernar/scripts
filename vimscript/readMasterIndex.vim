
function! s:readMasterIndex()
    if (filereadable(s:masterindex))
        let s:master = readfile(s:masterindex)
    endif
    return s:master
endfunction
