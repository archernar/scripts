function! s:exec(...)
    let l:n = 1
    let l:sz = "" 
    while l:n <= a:0
        let l:sz = l:sz . get(a:, l:n, 0)
        silent exe  get(a:, l:n, 0)
        let l:n = l:n + 1
    endwhile
endfunction
function! s:nexec(...)
    let l:n = 1
    let l:sz = "" 
    while l:n <= a:0
        let l:sz = l:sz . get(a:, l:n, 0)
        let l:n = l:n + 1
    endwhile
    silent exe  "normal! " . l:sz
endfunction
