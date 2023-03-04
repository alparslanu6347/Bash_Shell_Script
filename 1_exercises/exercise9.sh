#!/bin/bash

### names = ["kerry", "dickson", "John", "Mary",
#  "carol", "Rose", "adam"]
# You are given a list of names above. This list is made up of names
# of lowercase and uppercase letters. Your task is to write a code
# that will return a tuple of all the names in the list that have only
# lowercase letters. Your tuple should have names sorted
# alphabetically in descending order. Using the list above, your
# code should return: ('kerry', 'dickson', 'carol', 'adam')

names=( "kerry" "dickson" "John" "Mary" "carol" "Rose" "adam" )

lowercase_name(){
    lower=""
    upper=""
    for i in ${names[@]}
    do
        if [[ $i =~ ^[a-z] ]]; then
            #echo $i
            lower+=$i" "
        elif [[ $i =~ ^[A-Z] ]]; then
            upper+=$i" "
        fi
    done
    echo "lower case names : $lower"
    echo "upper case names: $upper"

}

lowercase_name