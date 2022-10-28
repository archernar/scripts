    function! g:ColMan()
        let l:startl = line('.')
        let l:startc = col('.')
        let l:n = search("[^ ]",'Wc')
        let l:l = line('.')
        let l:c = col('.')
        if ($VIMCOLUMN == "")
            let l:col = 26
        else
            let l:col = $VIMCOLUMN
        endif
        let l:n = l:col - l:c
        call s:nexec("i" . repeat(" ", l:n) ."\<Esc>")
        exe l:startl
        call s:nexec("0" ."\<Esc>")
        call s:nexec(l:startc . "|" ."\<Esc>")
        exe "normal! j" 
    endfunction
    nnoremap         <leader>c :call g:ColMan()<cr>
