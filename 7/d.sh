#!/bin/bash

arr=(5 2 8 1 9 3 4)

echo "Arreglo original: ${arr[*]}"
echo "1) Ascendente  2) Descendente"
echo -n "Elija: "
read opcion

# Convertir arreglo a líneas, ordenar y volver a arreglo
if [ "$opcion" = "1" ]; then
    sorted=($(printf '%s\n' "${arr[@]}" | sort -n))
    echo "Orden ascendente: ${sorted[*]}"
elif [ "$opcion" = "2" ]; then
    sorted=($(printf '%s\n' "${arr[@]}" | sort -nr))
    echo "Orden descendente: ${sorted[*]}"
else
    echo "Opción inválida"
fi
