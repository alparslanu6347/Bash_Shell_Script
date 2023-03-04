#!/bin/bash

## # Write a function called word_index that takes one argument,
# a list of strings and returns the index of the longest word in the
# list. If there is no longest word (if all the strings are of the same
# length), the function should return zero (0). For example, the list
# below should return 2.
# words1 = ["Hate", "remorse", "vengeance"]
#  And this list below, should return zero (0)
# words2 = ["Love", "Hate"]

words=( "Hate" "remorse" "vengeance" "elvedaistanbul" "tonyrobinsfuckingjim" )

word_index(){
    max=1
    for i in ${words[@]}
    do
        #echo $i
        if (( ${#i} > $max ))
        then
        max=${#i}
        longest_word=$i
        else
        max=$max
        longest_word=$longest_word
        fi
    done
    echo $longest_word

}
word_index