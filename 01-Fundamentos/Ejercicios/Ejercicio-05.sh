#!/bin/bash

$(wget $1 -q -O - > file1.txt)
CONTENT=$(wget $1 -q -O -)

if [ $# -lt 2 ]; then
    echo "Se necesitan unicamente dos parametros para ejecutar este script"
    exit 1
else
    if [[ "$CONTENT" =~ .*"$2".* ]]; then
        echo "Se ha encontrado la palabra $2"
        echo "La palabra '"$2"' aparece $(cat file1.txt | grep -o "$2" | wc -l) veces"
        echo "Aparece por primera vez en la linea $(grep -w "$2" -c file1.txt)"
    else
        echo "No se ha encontrado la palabra $2"
    fi
fi