#!/bin/bash

# Script to disable users accounts


# a=`lastlog | tail -n+2 | grep "user1" | awk "{print $1}"`
# for i in $a
# do
#     usermod -L $i
# done

#Disable using xargs

lastlog | tail -n+2 | grep 'user1' | awk '{print $1}' |
  xargs -I{} echo {}


lastlog | tail -n+2 | grep 'user2' | awk '{print $1}' |
  sudo xargs -I{} usermod -L {}




