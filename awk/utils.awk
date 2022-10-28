function noext(s) {sub(/[.].*$/, "", s); return s}
function ltrim(s) {sub(/^[ \t]+/, "", s); return s}
function rtrim(s) {sub(/[ \t]+$/, "", s); return s}
function trim(s) { return rtrim(ltrim(s)); }
function dq(sz) { return "\"" sz "\""; }
function rnd(min,max) {return int(min+rand()*(max-min+1)) }

function cdr(sz, A, d) {d="/";n=split(sz,A,d); return(trim(A[n])); }
function cdr1(sz, A, d) {d="/";n=split(sz,A,d); return(trim(A[n])); }
function cdr2(sz, A, d) {d="/";n=split(sz,A,d); return(trim(A[n-1])); }

function song(sz, A, d) {d="/";n=split(sz,A,d); return(trim(A[n])); }
function songname(sz, A, d) {d="/";n=split(sz,A,d); return(noext(trim(A[n]))); }
function album(sz, A, d) {d="/";n=split(sz,A,d); return(trim(A[n-1])); }
function righthere(sz, A, d) {d="/";n=split(sz,A,d); return(trim(A[n])); }
function artist(sz, A, d) {d="/";n=split(sz,A,d); return(trim(A[n-2])); }
function pad10(sz)       {return(sprintf("%-10s", sz)); }
function pad12(sz)       {return(sprintf("%-12s", sz)); }
function pad20(sz)       {return(sprintf("%-20s", sz)); }
function pad30(sz)       {return(sprintf("%-30s", sz)); }
function pad40(sz)       {return(sprintf("%-40s", sz)); }
function pad44(sz)       {return(sprintf("%-44s", sz)); }
function pad50(sz)       {return(sprintf("%-50s", sz)); }
function pad50bar(sz)    {return(sprintf("%-50s | ", sz)); }

function pad97(sz)       {return(sprintf("%-97s", sz)); }
function pad100bar(sz)   {
    y="\033[33m";w="\033[37m";
    sz=substr(sz,1,97);return(pad97(sz) y " | " w);
}
function pad63(sz)       {return(sprintf("%-63s", sz)); }
function pad66bar(sz)   {
    y="\033[33m";w="\033[37m";
    sz=substr(sz,1,63);return(pad63(sz) y " | " w);
}
function padnbar(sz,n,            y,w,l, bar)   {
    bar=" " sprintf("%c", 0x02551) " "
    #sz = trim(sz)
    y="\033[33m";w="\033[37m";
    l=1;
    sz=substr(sz,1,n-l);return( sprintf("%-" (n-l) "s", sz) y bar w);
}

function splad(szLabel,d,            sz,delim,i,v,pad,blanks) {
    blanks = "                                                              "
    pad = 15;
    sz=""
    fc = substr(szLabel,1,1)
    if (fc == " ") {
        szLabel = trim(szLabel)
        if (length(szLabel) < pad) {
            szLabel = " " trim(szLabel)
            szLabel = szLabel substr(blanks,1,pad-length(szLabel));
        }
    }
    else
        if (length(szLabel) < pad)
            szLabel = szLabel substr(blanks,1,pad-length(szLabel));

    if ( d == "") d = " ";
    delim=""
    sz= sz szLabel;
    szLabel = " " substr(blanks,1,pad-1);
    v=1;
    if (v<=NF) sz = sz delim $v; v++;delim=d;
    if (v<=NF) sz = sz delim $v; v++;
    if (v<=NF) sz = sz delim $v; v++; 
    if (v<=NF) sz = sz delim $v; v++; 
    if (v<=NF) sz = sz delim $v; v++; 
    if (v<=NF) sz = sz delim $v; v++; 
    if (v<=NF) {
        sz = sz delim $v 
        sz = sz "\n" szLabel
        delim=""
    } v++;
    if (v<=NF) sz = sz delim $v; v++;delim=", ";
    if (v<=NF) sz = sz delim $v; v++;delim=", ";
    if (v<=NF) sz = sz delim $v; v++;delim=", ";
    if (v<=NF) sz = sz delim $v; v++;delim=", ";
    if (v<=NF) sz = sz delim $v; v++;delim=", ";
    return sz;
}
function arpa(sz,                 A,n) {
    # 47.1.168.192.in-addr.arpa:
    n=split(sz,A,"."); 
    return(A[4] "." A[3] "." A[2] "." A[1] )
}
