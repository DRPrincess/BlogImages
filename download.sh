#!/bin/bash

imgs=`./qrsctl listprefix dr-atom-markdown-img ''`

i=0
echo $imgs | tr " " "\n" | while read line
do
    if(($i>0))
    then
        echo $line
        ./qrsctl get dr-atom-markdown-img $line ./$line
    fi
    i=$(($i+1))
done
