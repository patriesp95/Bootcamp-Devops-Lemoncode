#!/bin/bash

# esto es un comentario
# y esto es otro comentario

# definir clave=valor (sin espacios)

i=0
while [[ $i -le 5 ]]; do
    ((sum+=$i))
    ((i++))
done

echo "El resultado es $sum"

