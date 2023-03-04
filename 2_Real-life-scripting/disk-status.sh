#!/bin/bash

checkSpace= `df -h | egrep -v "tmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1 `

for i in $checkSpace
do
    if [ $i -ge 50 ]
    then
        echo "Space is greater than 50%"
    else
        echo "Space is not greater than 50%"
    fi
done