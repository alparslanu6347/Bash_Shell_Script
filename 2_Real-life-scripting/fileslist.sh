#!/bin/bash

echo "files in current folders: "

for file in ls pwd
do
    echo "--------$file--------"
    $file
    echo
done