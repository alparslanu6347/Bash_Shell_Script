#!/bin/bash

# Write a function called longest_value that takes a dictionary
# as an argument and returns the first longest value of the
# dictionary. For example, the following dictionary should return
# – apple as the longest value.
# fruits = {'fruit': 'apple', 'color': 'green'}

declare -A fruits
fruits=( ["fruit"]="apple" ["color"]="greeen" ["car"]="lamborginee" ["shape"]="circleee" ["command"]="speedyflygeorge" ["command2"]="speedygoncales" )

longest_value(){
    max=1
    for key in ${!fruits[@]}
    do    
        #echo $key  #fruit
        #echo ${fruits[$key]}  #apple
        #echo "$key => ${fruits[$key]}"  #fruit => apple
        if (( ${#fruits[$key]} > $max ))
        then
            max=${#fruits[$key]}
            maxitem=${fruits[$key]}                      
        else
            max=$max
            maxitem=$maxitem
        fi
        
    done
    echo $maxitem
    echo $max
    #echo ${!fruits[@]}
    #echo ${!fruits[@]}
}
longest_value