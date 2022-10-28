
function! CaptureSession()
    let l:c=1
    let l:global=[]
    let l:body=[]
    let l:winbody=[]
    let l:gfn = $HOME . "/.vimsessionglobal"

    if (filereadable(l:gfn)) 
        let l:global = readfile(l:gfn)
    endif

    echom "capturing up to " . s:MAXBUFFERS . " buffers"
    while l:c <= s:MAXBUFFERS 
        if (bufexists(l:c))
            if ( 1 == 1 )
                if (getbufvar(l:c, '&buftype') == "")
                    if !(bufname(l:c) == "")
                       call add(l:body, FullPathFileName(bufname(l:c)))
                    endif
                endif
            endif
        endif
        let l:c += 1
    endwhile 

    for l:l in range(1, winnr('$'))
                call add(l:winbody, FullPathFileName(bufname(winbufnr(l:l))))
    endfor

    call writefile(l:body,    ($VIMSESSION == "") ? "vim.vimsession" : $VIMSESSION . ".vimsession")
    call writefile(l:winbody, ($VIMWINDOW == "") ? "vim.vimwindow" : $VIMWINDOW   . ".vimwindow")
    " https://stackoverflow.com/questions/7236315/how-can-i-view-the-filepaths-to-all-vims-open-buffers
    let l:mm=map(filter(range(0,bufnr('$')), 'buflisted(v:val)'), 'fnamemodify(bufname(v:val), ":p")')
    for l:l in l:mm
        call add(l:global, FullPathFileName(l:l))
    endfor
    call writefile(l:global, l:gfn)
    echom "session written to " . (($VIMSESSION == "") ? "vim.vimsession" : $VIMSESSION . ".vimsession")
endfunction
