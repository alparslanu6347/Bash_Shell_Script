#!/bin/bash

# List Files and Directories with Description

# If you want to list the files in /home directory, 
# you can use the for loop like this:

for obj in /home/aydintokus/*
do 
    if [ -d $obj ]
    then
        echo $obj is a folder
    elif [ -f $obj ]
    then
        echo $obj is a file
    fi

done