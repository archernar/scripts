
function s:Dump(...)
    let l:c = 1
    call s:LogMessage("Dump")
    while l:c <= s:MAXBUFFERS 
        if (bufexists(l:c))
                if (getbufvar(l:c, '&buftype') == "")
                    if !(bufname(l:c) == "")
                        call s:LogMessage("    " . bufname(l:c) . "  buffer # " . l:c)
                    endif
                endif
        else
            let l:c = s:MAXBUFFERS +1
        endif
        let l:c += 1
    endwhile 
    call s:LogMessage("DumpEnd")
endfunction
