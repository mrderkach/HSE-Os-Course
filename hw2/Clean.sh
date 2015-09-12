#!/bin/bash

dir=$1

if [ ! -d $dir ]
 then
    echo "Key 1 should be a path"
    exit 1
fi

while read line
 do
    pattern="`echo $line | sed -r  's/#.+//'`"
    for filename in $dir$pattern
     do
        if test -f "$filename"
         then
            rm $filename
            echo "File: $filename removed"
        fi
    done
done

exit 0

