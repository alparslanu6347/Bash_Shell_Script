#!/bin/bash

hostIp="192.168.100.100"
ping -c1 $hostIp &> /dev/null

if [ $? -eq 0 ]
then
	echo "$hostIp is working"
else
	echo "$hostIp is not working"
fi
