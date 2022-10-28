
function s:TabCount()
    let l:ret = 0
    for l:i in range(tabpagenr('$'))
        let l:ret = l:ret + 1
    endfor
    return l:ret
endfunction
