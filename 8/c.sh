#!/bin/bash
# Renombrar archivos par -> impar (usa resultado de b)

dir=${1:-carpeta_con_archivos}
[ ! -d "$dir" ] && echo "corre b primero" && exit 1

find $dir -name "*.txt" | while read f; do
    name=$(basename $f .txt)
    [[ ! "$name" =~ ^[0-9]+$ ]] && continue
    if [ $((name%2)) -eq 0 ]; then
        mv "$f" "$(dirname $f)/$((name+1)).txt"
    fi
done
