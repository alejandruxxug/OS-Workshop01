#!/bin/bash
# X subcarpetas, cada una con Y archivos .txt con nombres numéricos aleatorios

read -p "subcarpetas: " x
read -p "archivos por carpeta: " y

rm -rf carpeta_con_archivos
mkdir carpeta_con_archivos

for ((i=1;i<=x;i++)); do
    mkdir carpeta_con_archivos/subcarpeta_$i
    for ((j=0;j<y;j++)); do
        r=$((RANDOM%9999+1))
        touch carpeta_con_archivos/subcarpeta_$i/$r.txt
    done
done
