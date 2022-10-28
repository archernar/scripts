
function! s:BuildTags(...)
        silent execute "!ctags -L " . (($VIMSESSION == "") ? ".vim.vimsession" : $VIMSESSION . ".vimsession")
        redraw!
endfunction
