#!/bin/bash -x

### Write a function called register_check that checks how many
# students are in school. The function takes a dictionary as a
# parameter. If the student is in school, the dictionary says ‘yes’. If
# the student is not in school, the dictionary says ‘no’. Your
# function should return the number of students in school. Use the
# dictionary below. Your function should return 3.
# register = {'Michael':'yes','John': 'no',
#  'Peter':'yes', 'Mary': 'yes'}

declare -A register

register=( ["Michael"]="yes" ["John"]="no" ["Peter"]="yes" ["Mary"]="yes" ["James"]="no" )
number_of_students=0

register_check(){
    yesAnswer="yes"
    for key in ${!register[@]}
    do    
        
        if (( ${register[$key]} == $yesAnswer ));
        then
            echo ${register[$key]}
            ((number_of_students++))
            echo number_of_students
            
        else
            number_of_students=0
            
        fi
        
    done
    echo $number_of_students

}

register_check
