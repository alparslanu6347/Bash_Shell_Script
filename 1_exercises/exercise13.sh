#!/bin/bash

## Write a function called user_name that generates a username 
# from the users email. The code should ask the user to input an 
# email and the code should return everything before the @ sign 
# as their user name. For example, if someone enters 
# ben@gmail.com, the code should return ben as their user 
# name.

# !!!!!!! YAPAMADIM, TEKRAR DENE!!!!!!!

user_name () {
    read -p "please enter your e-mail : " mail
    for i in ${mail[@]}
    do
        if [[ $i == ^[@]$ ]]
        then
            echo "@ var"
        else
            echo "yoktur"
        fi

    done

}

user_name

