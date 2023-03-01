#!/bin/bash

# esto es un comentario
# y esto es otro comentario

# definir clave=valor (sin espacios)


if [[ $# -lt 2 ]]; then
    echo "ERROR: missing arguments" >&2 
    exit 1
else
    echo "Numero de argumentos: $#"
    echo $(($1+$2))
fi


