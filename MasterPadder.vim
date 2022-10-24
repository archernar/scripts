function! g:MasterPadder(padsize)
    exe "normal! gg0"
    let l:linecount = line('$')
    let l:c = 1
    while l:c <= linecount
        let l:line = line('.')
        let l:sz = getline('.')
        if ( len(l:sz) == 0)
             let l:sz = "  "
        endif
        " remove trailing blanks
        let l:sz = substitute(l:sz, " *$", "", "g")
        let l:sz = substitute(l:sz, "/", "\/", "g")
        let l:sz = substitute(l:sz, "\t", "", "g")
        let l:l = len(l:sz)
        let l:n = a:padsize - len(l:sz)
        let l:padding = repeat(" ", l:n)
        let l:modline = l:sz . l:padding

        exe "normal! 0"
        call setline(l:line, l:modline)
        exe "normal! j"
        let l:c = l:c + 1
    endwhile
    exe "normal! gg0"
endfunction
