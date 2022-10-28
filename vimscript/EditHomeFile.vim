function! g:EditHomeFile()
    let l:name = ""
    let l:name = input('edit ~/<filename>: ')
    if ( l:name == "")
        let l:name = ".vimrc"
    endif
    exe ":e " . "~/" . l:name
endfunction
