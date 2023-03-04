#!/bin/bash


# bash check if directory exists
directory="./Test"

if [ -d $directory ];
then
    echo "Directory exists"
else
    echo "Directory doesn't exist"
fi