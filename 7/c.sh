#!/bin/bash

arr=(5 2 8 1 9 3 4 8 8 2 2)

echo "Arreglo: ${arr[*]}"
echo -n "Elemento a contar: "
read elemento

contador=0

for num in "${arr[@]}"; do
    if [ "$num" -eq "$elemento" ] 2>/dev/null; then
        ((contador++))
    fi
done

echo "El elemento $elemento aparece $contador vez/veces"
