
function! g:CopyFiles()
    let l:sfile   = ($VIMSESSION == "") ? ".vim.vimsession" : $VIMSESSION . ".vimsession"
    if (filereadable(l:sfile))
        call s:LogMessage("Reading " . fnamemodify(l:sfile, ':p'))
        let l:body = readfile(l:sfile)
        call system("mkdir -p ./.vim.fileset")
        call system("rm -rf   ./.vim.fileset")
        call system("mkdir -p ./.vim.fileset")
        call system("mkdir -p ./.vim.fileset.tars")
        for l:l in l:body
            let l:dq="\""
            let l:sz = "cp " . l:dq . l:l . l:dq . "   ./.vim.fileset"
            call system(l:sz)
        endfor
        let l:fn = "./.vim.fileset.tars/fileset." . strftime("%Y%m%d%H%M%S") . ".tar"
        call system("tar cvf " . l:fn .  " ./.vim.fileset")
    endif
endfunction
