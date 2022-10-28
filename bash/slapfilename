#!/usr/bin/bash
Tmp=/tmp/$$

if [ $# -eq 0 ]
  then
        rm -f ./taggerdo

        for filename in *.$1; do
            FILE="$filename"
            NAME="$filename"
            NAME=`echo "$NAME"     | sed "s/ \[.*\]//g"`
            NAME=`echo "$NAME"     | sed "s/^[&]//g"`
            NAME=`echo "$NAME"     | sed "s/[']//g"`
            NAME=`echo "$NAME" | sed "s/_/ /g"`
            NAME=`echo "$NAME" | sed "s/  / /g"`
            NAME=`echo "$NAME" | sed "s/  / /g"`
            NAME=`echo "$NAME" | sed "s/  / /g"`
            NAME=`echo "$NAME" | sed "s/^ //"`
            NAME=`echo "$NAME" | sed "s/^ //"`
            NAME=`echo "$NAME" | sed "s/^ //"`
            NAME=`echo "$NAME" | sed "s/ [.]mp3/.mp3/"`
            NAME=`echo "$NAME" | sed "s/ [.]mp3/.mp3/"`
            NAME=`echo "$NAME" | sed "s/ [.]mp3/.mp3/"`
           CMD="mv \"./$filename\" \"$NAME\""
           echo $CMD
           echo $CMD > ./taggerdo
           chmod 777  ./taggerdo
           ./taggerdo
           rm -f ./taggerdo
        done

fi
