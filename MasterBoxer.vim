function! g:MasterBoxer()
    let l:padsize = g:LongestLine() + 1 
    let l:lccV = nr2char(0x02551)
    let l:lccH = nr2char(0x02550)
    let l:lccTLC = nr2char(0x02554)
    let l:lccBLC = nr2char(0x0255A)
    let l:lccTRC = nr2char(0x02557)
    let l:lccBRC = nr2char(0x0255D)
    let l:linecount = line('$')
    let l:dashcount=l:padsize
    let l:dent=6
    call g:MasterPadder(l:padsize)
    " *******************************************************************************************************
    call g:MasterPadder(l:padsize)
    call s:exec("%s/$/" . l:lccV . "/")
    let l:quack = nr2char(0x02593)
    call s:exec("%s/^/" . repeat(l:quack, l:dent+0) . l:lccV . " /")
    call s:nexec(
\               "gg0",
\               "O" . repeat(l:quack, l:dent) . l:lccTLC . "" . repeat(l:lccH, l:dashcount+1) . "" . l:lccTRC ."\<Esc>",
\            	"G0",
\               "o" . repeat(l:quack, l:dent) . l:lccBLC . "" . repeat(l:lccH, l:dashcount+1) . "" . l:lccBRC . "\<Esc>"
\              )
    " *******************************************************************************************************
    nnoremap <silent> <buffer> <Enter> :call g:Selector()<cr>
    call s:nexec("gg0")
    exec "normal! llllllllj" 
    exe "setlocal readonly"
endfunction
