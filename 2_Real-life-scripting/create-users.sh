#!/bin/bash

read -p "how many user do you want to create: " totalUser

for i in $(seq 1 $totalUser)
do
    read -p "Enter user name : " username
    sudo useradd $username
done


# for name in Fatih Aydin Sule Adnan Emre
# do
#     sudo useradd $name
# done

# tail -5 /etc/passwd

# for name in Fatih Aydin Sule Adnan Emre
# do
#     sudo userdel $name
# done

# tail -5 /etc/passwd