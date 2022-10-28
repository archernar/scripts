
CHVVV=`gawk 'BEGIN{printf "%c", 0x02551}'`
export CHHHH=`gawk 'BEGIN{printf "%c", 0x02550}'`
CHTLC=`gawk 'BEGIN{printf "%c", 0x02554}'`
CHBLC=`gawk 'BEGIN{printf "%c", 0x0255A}'`
CHTRC=`gawk 'BEGIN{printf "%c", 0x02557}'`
CHBRC=`gawk 'BEGIN{printf "%c", 0x0255D}'`
putfile () {
    tt=$1
    tt=`echo -n "$tt" | tr " " "-"`
    rr=$2
    cc=$3
    working "$tt"
    flag=""
    N=`cat $Tmp | wc -l` 
    cat /tmp/file | gawk -v c=$COLLIMIT -i $HOME/utils.awk '{print padnbar($0,c)}' | head -$ROWLIMIT > $Tmp1
    if [ "$N" -gt "$ROWLIMIT" ]; then
        echo -n $cyan >> $Tmp1
        echo -n "More..." >> $Tmp1
        echo  $white >> $Tmp1
    fi

    cat $Tmp1 > /tmp/file
    input="/tmp/file"
    IFS=""
    if [ "$tt" != "" ]; then
        echo -n $yellow
        pos "$rr" "$cc"
        #put "         1         2         3         4         5         6         7         8         9"
        # SAVEtt=`echo -n "$tt" | gawk -v c=$COLLIMIT -i $HOME/utils.awk '{print padnbar($0,c)}' | tr " " "$CHHHH"`
        tt=`echo -n "$tt" | gawk -v c=$COLLIMIT -i $HOME/utils.awk '{print padnbar($0,c)}'`
        tt=$(echo "$tt" | sed "s/ /$CHHHH/g")
        put "$tt"
        ((rr=rr+1))
        echo -n $white
    fi
    while read -r line
    do
      pos "$rr" "$cc"
      put "$line"
      ((rr=rr+1))
    done < "$input"

    export LASTROW=$rr
}
put32 () {
   echo -n $1 | cut -c1-32
}
put () {
   echo -n $1 
}
bot () {
   L=`tput lines`
   C=`tput cols`
   ((L=L-1))
   SZ=$(printf '\033[%s;%sH' "$L" "1")
   echo -n $SZ
}
reset () {
    rm -f $Tmp
    touch $Tmp
}

# Clear Line: \u001b[{n}K clears the current line
# n=0 clears from cursor to end of line
# n=1 clears from cursor to start of line
# n=2 clears entire line
clreol () {
   SZ=$(printf '\033[0K')
   echo -n $SZ
}
working () {
   L=`tput lines`
   C=`tput cols`
   ((L=L-1))
   SZ=$(printf '\033[%s;%sH' "$L" "1")
   echo -n $SZ
   clreol
   SZ=$(printf '\033[%s;%sH' "$L" "1")
   echo -n $SZ
   echo -n "Working... $1"
}
workdone () {
   L=`tput lines`
   C=`tput cols`
   ((L=L-1))
   SZ=$(printf '\033[%s;%sH' "$L" "1")
   echo -n $SZ
   clreol
   echo -n "Done"
}

