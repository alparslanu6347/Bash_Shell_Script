#!/bin/bash

# Write a function called even_or_average that ask a user to
# input five numbers. Once the user is done, the code should
# return the largest even number in the inputted numbers. If
# there is no even number in the list, the code should return the
# average of all the five numbers.

numlist=()

for i in {1..5}
do
    read -p "please enter $i'nci number: " number
    numlist+="$number "
done
echo $numlist

even_or_average () {
    toplam=0
    max=0
    even_num=()
    for sayi in "$@"
    do
        if [[ $sayi%2==0 ]]
        then
            even_num+="$sayi"
        else
            toplam+=$sayi
        fi
    let average=$(( $toplam / 5 ))    
    done
    
    for i in ${even_num[@]}
    do
        if [[ ${even_num[$i]} -gt 0 ]]
        then
            max=$i
            echo "Girilen sayilarin en buyuk cift sayisi : $max"
        else
            echo "Girilen sayilarin ortalamasi : { $average } "
        fi
    done


}

even_or_average $numlist