#!/bin/bash

directorios=(foo dummy empty)
ficheros=(file1 file2)

for dir in "${directorios[@]}"
do
  if [ -d $dir ];then
    echo “La capeta $dir ya existe.”
else

    if [ $dir !=  ${directorios[0]} ];then
        mkdir -p ${directorios[0]}/$dir
    else
        mkdir $dir
    fi

    
    if [ $dir !=  ${directorios[0]} ];then
        
        touch ${directorios[0]}/${directorios[1]}/"file1.txt"
        touch ${directorios[0]}/${directorios[2]}/"file2.txt"
        if [ -z $1 ];then
            echo "Que me gusta la bash!!!!" >  ${directorios[0]}/${directorios[1]}/"file1.txt"
            echo "Que me gusta la bash!!!!" >  ${directorios[0]}/${directorios[2]}/"file2.txt"
        else
            echo "$1" >  ${directorios[0]}/${directorios[1]}/"file1.txt"
            echo "$1" >  ${directorios[0]}/${directorios[2]}/"file2.txt"
        fi
        
    fi

    if [ $? -eq 0 ];then
      echo “$dir se ha creado con éxito”
    else
      echo “Ups! Algo ha fallado al crear $dir”
    fi
  fi
done