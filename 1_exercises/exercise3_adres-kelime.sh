#!/bin/bash

# kelimeler="insan kedi kitap python koyun php deve perl ruby"
# for kelime in $kelimeler
# do
#   echo $kelime 
# done

# adres=$1

# if [ -e $adres ]
# then
#     if [ -f $adres ]
#     then
#         echo "bu bir dosya"
#         exit 1
#     fi
#     if [ -d $adres ]
#     then
#         echo "bu bir dizin"
#         exit 2
#     fi
# else
#     echo "adres yok"
#     exit 16
# fi

adresler=$@

for adres in $adresler
do
if [ -e $adres ]
then
    if [ -f $adres ]
    then
        echo "bu bir dosya"
        #exit 1
    fi
    if [ -d $adres ]
    then
        echo "bu bir dizin"
        #exit 2
    fi
else
    echo "adres yok"
    #exit 16
fi
done
