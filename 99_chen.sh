#!/bin/bash
j=1
while [ "$j" -le 9 ]
do
    k=1
    while [ "$k" -le "$j" ]
    do
        sum=$[ $k * $j ]
        echo -ne "$k*$j=$sum\t"       #-n表示不换行，-e配合\t表示tab制表符
        k=$[ k + 1 ]
    done
    echo ""                           #打印换行符
    j=$[ j + 1 ]
done
