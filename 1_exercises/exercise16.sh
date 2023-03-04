#!/bin/bash

# Kullanıcıdan bir dosya ismi girmesini isteyelim.

# 1- Dosyanın okuma ve yazma izni varsa evet yazıp çıksın.

# 2- Yoksa dosyaya okuma yazma izni vereyim mi diye sorsun.

# 3- Evet ise işlemi yapsın okuma yazma izni versin

# 4- Hayır ise direk çıkış bye yazıp çıksın.

# 5- Yanlış kullanımlar için bye yazıp çıksın.

# Not: Klasörde olan dosya olduğunu varsayıyoruz.

read -p "file ismini girin: " file

if [[ -w $file ]] && [[ -r $file ]]
then
    echo "evet"
else
    read -p "dosyayi okuma ve yazma izni vereyim mi evet veya hayir giriniz : " evethayir
    if [[ $evethayir == "evet" ]]
    then
        chmod +rw $file
    elif [[ $evethayir == "hayir" ]]
    then
        echo "bye"
    else
        echo "bye"
    fi
fi