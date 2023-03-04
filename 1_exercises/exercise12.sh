#!/bin/bash

## # Extra Challenge: Tuple of Student Sex
# You work for a school and your boss wants to know how many
# female and male students are enrolled in the school. The school
# has saved the students in a list. Your task is to write a code that
# will count how many males and females are in the list. Here is a
# list below:
# students = ['Male', 'Female', 'female', 'male', 'male', 'male',
#  'female', 'male', 'Female', 'Male', 'Female', 'Male', 'female']
# Your code should return a list of tuples. The list above should
# return:
# [(‘Male’,7), (‘female’,6)]

students=( "Male" "Female" "female" "male" "male" "male" "female" "male" "Female" "Male" "Female" "Male" "female" )

tuple_of_student_sex(){
    male_count=0
    female_count=0
    for i in ${students[@]}
    do
        if [[ $i == "male" ]] || [[ $i == "Male" ]]
        then
            let male_count+=1
        elif [[ $i == "female" ]] || [[ $i == "Female" ]]
        then
            let female_count+=1
        fi

    done
    echo " [("Male", $male_count), ("Female", $female_count)] "

}

tuple_of_student_sex