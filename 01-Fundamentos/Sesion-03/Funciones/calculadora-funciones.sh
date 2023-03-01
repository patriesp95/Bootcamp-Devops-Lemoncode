#!/bin/bash
set -v

suma_numeros(){
   ((sum+=$i))
}


i=0

while [[ $i -le 5 ]]; do
   suma_numeros
   ((i++))
done

echo "El resultado es $sum"

