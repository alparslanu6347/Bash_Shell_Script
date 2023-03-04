# Write a function called odd_even that has one parameter and
# takes a list of numbers as an argument. The function returns the 
# difference between the largest even number in the list and the 
# smallest odd number in the list. For example, if you pass 
# [1,2,4,6] as an argument the function should return 6 -1= 5.


odd_even () {
    max=0
    min=10000
    for i in "$@"
    do
        if [ $i -gt $max ]
        then
            max=$i
        else
            continue
        fi
    done

    for i in "$@"
    do
        if [ $i -lt $min ]
        then
            min=$i
        else
            continue
        fi
    done
    
    echo $((max - min))

}


odd_even 1 2 4 6
