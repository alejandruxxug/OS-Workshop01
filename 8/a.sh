#!/bin/bash
# Crear carpeta con X subcarpetas (X por consola)

read -p "cuantas subcarpetas? " x
mkdir -p mi_carpeta
cd mi_carpeta

i=1
while [ $i -le $x ]; do
    mkdir -p subcarpeta_$i
    i=$((i+1))
done

cd ..
echo listo
