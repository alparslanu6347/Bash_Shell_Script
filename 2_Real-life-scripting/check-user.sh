#!/bin/bash

#kullanıcı ismini kontrol etme

echo "Enter your username:"
read username
if getent passwd "$username" > /dev/null 2>&1; then
    echo "yes the user '$username' exists"
else
    echo "No, the user '$username' does not exist"
fi

#getent passwd | grep user2

# USER="userid"

# if id $USER > /dev/null 2>&1; then
#    echo "user exist!"
# else
#   echo "user deosn't exist"
# fi

# user="bob"
# if cut -d: -f1 /etc/passwd | grep -w "$user"; then
#     echo "user $user found"
# else
#     echo "user $user not found"
# fi