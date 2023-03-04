#!/bin/bash

## # Strings to Integers
# Write a function called convert_add that takes a list of strings
# as an argument and converts it to integers and sums the list. For
# example [‘1’, ‘3’, ‘5’] should be converted to [1, 3, 5] and
# summed to 9.

sum=0

convert_add(){
    list=("1" "3" "5" "7" "9")
    sum=0
    for i in ${list[@]}
    do
        let sum=sum+i
    done
    echo $sum
}

convert_add