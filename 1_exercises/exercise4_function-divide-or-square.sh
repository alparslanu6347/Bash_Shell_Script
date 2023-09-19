#!/bin/bash

# Write a function called divide_or_square that takes one
# argument (a number), and returns the square root of the number
# if it is divisible by 5, returns its remainder if it is not divisible by
# 5. For example, if you pass 10 as an argument, then your function
# should return 3.16 as the square root.

number=$1

divide_or_square(){
    if [[ $number%5 -eq 0 ]]
    then
        echo $((number * number))
    else
        let remainder=number%5
        echo $remainder
    fi

}
divide_or_square