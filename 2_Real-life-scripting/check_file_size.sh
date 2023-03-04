#!/bin/bash

FILE=file.txt

if [ -s $FILE ]
then 
    echo "$FILE is not of zero size or not empty"
else
    echo "$FILE file is of zero or empty"
fi  
