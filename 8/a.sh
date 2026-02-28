#!/bin/bash
# Crear subcarpetas
echo "Elija cuantas subcarpetas quiere crear"
read cantidad

for ((i=1; i<=cantidad; i++)); do
    mkdir subcarpeta_$i
    echo "Subcarpeta $i creada"
done

echo "Subcarpetas creadas exitosamente"