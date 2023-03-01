#!/bin/bash

URL="https://lemoncode.net/"
$(wget $URL -q -O - > file1.txt)
CONTENT=$(wget $URL -q -O -)

if [ -z $1 ]; then
    exit 1
else
    if [[ "$CONTENT" =~ .*"$1".* ]]; then
        echo "Se ha encontrado la palabra $1"
        echo "La palabra '"$1"' aparece $(cat file1.txt | grep -o "$1" | wc -l) veces"
        echo "Aparece por primera vez en la linea $(grep -w "$1" -c file1.txt)"
    else
        echo "No se ha encontrado la palabra $1"
    fi
fi