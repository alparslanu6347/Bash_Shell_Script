#!/bin/bash

## Write a function called any_number that can receive any 
# number of arguments (integers and floats) and return the 
# average of those integers. If you pass 12, 90, 12, 34 as 
# arguments your function should return 37.0 as average. If you 
# pass 12, 90 your function should return 51.0 as average.

any_number () {
    toplam=0
    for i in "$@"
    do
        toplam=$((toplam + i)) 
    done
    average=$((toplam / $#))
    echo $average

}
any_number 12 90 12 34