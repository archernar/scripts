
function! LoadSession(...)

"   if exists("g:session_loaded")
"       return
"   endif

        let l:sfile   = ($VIMSESSION == "") ? ".vim.vimsession" : $VIMSESSION . ".vimsession"
        let l:wfile   = ($VIMWINDOW == "")  ? ".vim.vimwindow"  : $VIMWINDOW .  ".vimwindow"
        let l:splfile = ($VIMSPLIT == "")   ? ".vim.vimsplit"   : $VIMSPLIT .   ".vimsplit"
        call s:LogMessage("Loading implicit session file ". l:sfile)
        let l:sfolder = fnamemodify(fnamemodify(l:sfile, ':p'), ':h')

        " Tags Support
        call s:BuildTags()
        command! TAGS call s:BuildTags()
        


        let l:filecmd = "e"
        let l:splits = ""
        let g:session_loaded=1 
        call s:LogMessage($VIMSESSION . " " . l:sfile)
        call s:LogMessage($VIMWINDOW  . " " . l:wfile)
        call s:LogMessage($VIMSPLIT   . " " . l:splfile)
        call s:LogMessage(l:sfolder)

        if (filereadable(splfile))
            if ( len(readfile(splfile)) == 0)
                let l:body=[]
                call add(l:body, "none")
                call writefile(l:body, splfile)
            endif
            let l:splits = ""
            let l:splits = readfile(splfile)[0]
        else
            let l:body=[]
            call add(l:body, "none")
            call writefile(l:body, splfile)
            let l:splits = "none"
        endif

        if (l:splits == "tab")
            let l:filecmd = "tabedit"
        endif

        if (l:splits != "tab") 
            if (l:splits != "none")
                if (l:splits == "four")
                  execute "split | vsplit | wincmd w | vsplit | wincmd w | wincmd w | wincmd w"
                else
                  if (l:splits != "")
                      exe l:splits . " | exe '1wincmd w'"
                  endif
                endif
            endif
        endif

    let l:sz = ""
    let l:c = 0
    let l:sz = l:sfile
    call s:LogMessage("Loading Begin")
    call s:Dump()
    let l:tlist=[]
    let l:body = []
    if (filereadable(l:sfile))
        call s:LogMessage("Reading " . fnamemodify(l:sfile, ':p'))
        let l:tlist = readfile(l:sfile)
        let l:readmore = 1
        for l:l in l:tlist
            if ( l:l == "STOP")
                let l:readmore = 0
            endif
            if ( l:readmore == 1 )
                call add(l:body, l:l)
            endif
        endfor

        "let l:body = readfile(l:sfile)


        for l:l in l:body
            if !( l:l =~ "\"" )
                if !( l:l == "" )
                    exe l:filecmd . " " . l:l
                    call s:LogMessage("Loading Body Element " . l:l . " from " . l:sfile)
                    if (line("'\"") > 0 && line("'\"") <= line("$"))
                        exe "normal! g'\"" 
                    endif
                    let l:sz .= l:l . " "
                    let l:c += 1
                endif
            endif
        endfor
        call s:DeleteNoNameBuffer()
        call s:Dump()
        call s:LogMessage("Loading Complete")

        if (l:splits != "tab") 
            exe "tabfirst"
        else
            exe "1wincmd w"
        endif
    endif
    " ============
    " For SPLITS
    " ============
    let l:c = 1
    if (filereadable(l:splfile))
       if (filereadable(l:wfile))
            let l:body = readfile(l:wfile)
            for l:l in l:body
                if !(l:l == "")
                         if ( s:WindowExists(l:c) == 1 )
                             exe l:c . "wincmd w"
                             call s:LogMessage("Loading " . l:l)
                             exe "e " . l:l
                         endif
                         let l:c += 1
                endif
            endfor
        endif
        exe "1wincmd w"
    endif

if (!( $VIMFIRSTFILE == ""))
    exe "bwipeout! " . $VIMFIRSTFILE
endif

call s:Dump()
call s:LogMessage("END LoadSession()")
endfunction
