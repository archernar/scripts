
function s:LogMessage(...)
    let l:ret = 0
    return l:ret
    let l:messages=[]
    call add(l:messages, a:1)
    call writefile(l:messages, "/tmp/vimscript.log", "a")
    return l:ret
endfunction
