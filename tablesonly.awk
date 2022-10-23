

BEGIN {
    flag = 0
    print "<html>"
    print "<body>"

}

/^<table/ {
    flag = flag + 1 
    print "<table>"
}
/^<[/]table/ {
    flag--
    print $0
}

{
    if (flag > 0) {
        print $0
    }
}

END {
    print "</body>"
    print "</html>"

}
