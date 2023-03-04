#!/bin/bash

# kullanıcı sayısını hesaplayıp yazdırma, 
#kullanıcı listede olup olmadığını kontrol etme, 
#yoksa yeni kullanıcı olarak girilsin

counting_user () {

userList=`cat /etc/passwd | cut -d: -f1 | sort | tr ":" " " | column -t`
count=0

for i in $userList
do
    #echo $i
    ((count++))
done getent group
echo "toplam kayitli kişi sayisi : $count"

read -p "Enter a username: " username

#Check if the user already exists
while id "$username" >/dev/null 2>&1; do
    # The user exists, so ask for a new username
    echo "The user $username already exists. Please choose another username."
    read -p "Enter a username: " username
done

# The user does not exist, so create the user
sudo useradd "$username"
echo "User $username has been created."

}
counting_user 

