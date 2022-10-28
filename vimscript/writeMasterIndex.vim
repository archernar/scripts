
function! s:writeMasterIndex()
    call writefile(s:master, masterindex)
    return s:master
endfunction
