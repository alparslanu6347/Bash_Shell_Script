#!/bin/bash

###Write a function called add_reverse. This function takes two
# lists as argument and adds each corresponding number, and
# reverses the outcome. For example, if you pass [10, 12, 34]
# and [12, 56, 78]. Your code should return [112, 22, 68]. If the
# two lists are not of equal lengths, the code should return a
# message that "the lists are not of equal lengths".

add_reverse () {
    list1=( 10 12 34 )
    list2=( 12 56 78 )
    

    if [[ ${#list1[@]} != ${#list2[@]} ]]
    then
        echo "the lists are not of equal lengths"
        return
    fi

    list3=()
     
    for ((i=0; i<${#list1}; i++));
    do  
        #list3+=("$(( ${1[$i]} + ${2[$i]} ))")
        list3+=("$(( ${list1[$i]} + ${list2[$i]} ))")  
    done
        
    
    echo "${list3[@]}" | rev
}

add_reverse


# add_reverse() {
#   # Check if the two lists have the same number of elements
#   if [ ${#1} -ne ${#2} ]; then
#     echo "the lists are not of equal lengths"
#     return
#   fi

#   # Initialize the result list
#   result=()

#   # Iterate through the elements in the two lists
#   for ((i=0; i<${#1}; i++)); do
#     # Add the corresponding elements and append the result to the result list
#     result+=("$(( ${1[$i]} + ${2[$i]} ))")
#   done

#   # Reverse the result list
#   echo "${result[@]}" | rev
# }

# # Test the function
# add_reverse 10 12 34 12 56 78
