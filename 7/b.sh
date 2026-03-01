#!/bin/bash

arr=(5 2 8 1 9 3 4 8 8)

echo "Arreglo: ${arr[*]}"
echo -n "Elemento a buscar: "
read buscar

encontrado=0
indices=""

for i in "${!arr[@]}"; do
    if [ "${arr[$i]}" -eq "$buscar" ] 2>/dev/null; then
        encontrado=1
        indices="$indices $i"
    fi
done

if [ $encontrado -eq 1 ]; then
    echo "El elemento $buscar está en los índices:$indices"
else
    echo "El elemento $buscar no se encontró"
fi
