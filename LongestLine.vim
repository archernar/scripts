function! g:LongestLine()
    exe "normal! gg0"
    let l:linecount = line('$')
    let l:longest = len(getline('.'))
    let l:c = 1
    while l:c <= linecount
        let l:line = line('.')
        let l:sz = getline('.')
        if ( len(l:sz) > l:longest)
            let l:longest=len(l:sz)
        endif
        exe "normal! 0"
        exe "normal! j"
        let l:c = l:c + 1
    endwhile
    exe "normal! gg0"
    return l:longest
endfunction
