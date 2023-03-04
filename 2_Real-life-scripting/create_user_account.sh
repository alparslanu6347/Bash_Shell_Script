#!/bin/bash

#1 - Create User Account


# echo "Please provide a username?"
# read u
# echo

# sudo useradd $u
# echo $u account has been created


#====================================================

#2 - Error out if user exist

# while true
# do
# echo "Please provide a username?"
# read u
# echo

# grep -q $u /etc/passwd
#         if [ $? -eq 0 ]
#         then
#         echo ERROR -- User $u already exist
#         echo
#         echo "Please choose another username?"
#         read u
#         sudo useradd $u
#         echo $u account has been created
#         exit 0
#         fi
# done

#or
#read -p "Enter a username: " username
# Check if the user already exists
# while id "$username" >/dev/null 2>&1; do
#     # The user exists, so ask for a new username
#     echo "The user $username already exists. Please choose another username."
#     read -p "Enter a username: " username
# done

# # The user does not exist, so create the user
# sudo useradd "$username"
# echo "User $username has been created."

#====================================================

# #3 - Add user description
# read -p "Enter a username: " username
# # Check if the user already exists
# while id "$username" >/dev/null 2>&1; do
#     # The user exists, so ask for a new username
#     echo "The user $username already exists. Please choose another username."
#     read -p "Enter a username: " username
# done

# # The user does not exist, so create the user
# sudo useradd "$username"
# echo "User $username has been created."

# read -p "Please provide user description?: " description
# echo
# sudo usermod -c "$description" $username
# echo "User $username has been created with description $description."

#====================================================

#4 - Add User ID

# read -p "Enter a username: " username
# # Check if the user already exists
# while id "$username" >/dev/null 2>&1; do
#     # The user exists, so ask for a new username
#     echo "The user $username already exists. Please choose another username."
#     read -p "Enter a username: " username
# done

# # The user does not exist, so create the user
# sudo useradd "$username"
# echo "User $username has been created."

# read -p "Please provide user description?: " description
# echo
# sudo usermod -c "$description" $username
# echo "User $username has been created with description $description."

# read -p "Do you want to specify user ID (y/n)?: " ynu
# echo
#     if [ $ynu == "y" ]
#     then
#     read -p "Please enter UID?: " uid

#     sudo usermod $username -c "$description" -u $uid
#     echo
#     echo $username account has been updated

#     elif [ $ynu == "n" ]
#     then
#     echo No worries we will assign a UID
#     echo
#     echo $username account has been updated
#     fi

#====================================================

#5 - Add User ID check

read -p "Enter a username: " username
# Check if the user already exists
while id "$username" >/dev/null 2>&1; do
    # The user exists, so ask for a new username
    echo "The user $username already exists. Please choose another username."
    read -p "Enter a username: " username
done

# The user does not exist, so create the user
sudo useradd "$username"
echo "User $username has been created."

read -p "Please provide user description?: " description
echo
sudo usermod -c "$description" $username
echo "User $username has been created with description $description."

read -p "Do you want to specify user ID (y/n)?: " ynu
echo
if [ $ynu == "y" ]
then
read -p "Please enter UID?: " uid

    while id "$uid" >/dev/null 2>&1; do
    # The user exists, so ask for a new username
    echo "The uid $uid already exists."
    read -p "Enter a new uid: " uid
    done
    
    sudo usermod $username -c "$description" -u $uid
    echo $username account UID $uid has been modified

elif [ $ynu == "n" ]
then
echo No worries we will assign a UID
echo
echo $username account has been modified
fi




