

/^function/ {
    sz = ""
    fn = $0
    sub(/^function[!]*/, "", fn)
    sub(/[(].*$/, "", fn)
    fn = trim(fn) ".vim"
    sub(/^[gsl]:/, "", fn)
    fn = "/home/mestes/scripts/vimscript/" fn
}
/^function/,/^endfunction/ {
    sz = sz "\n" $0 
    close(fn)
}

/^endfunction/ {
    print sz >> fn
    close(fn)
}
