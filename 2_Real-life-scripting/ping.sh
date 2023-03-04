#!/bin/bash

# ping -c1 192.168.1.1
# if [ $? -eq 0 ]
# then
#     echo OK
# else
#     echo NOT OK
# fi

# ping -c1 192.168.1.1 &> /dev/null
# if [ $? -eq 0 ]
# then
#     echo OK
# else
#     echo NOT OK
# fi

IPLIST=( "192.168.1.1" "192.168.1.235" "127.25.21.2" )

for ip in ${IPLIST[@]}
do
    ping -c1 $ip &> /dev/null
    if [ $? -eq 0 ]
    then
        echo "$ip ping passed"
    else
        echo "$ip ping failed"
    fi
done