#!/bin/bash
# Tamaño de cada archivo en carpeta

dir=${1:-.}
for f in $dir/*; do
    [ -f "$f" ] && echo "$(basename $f): $(ls -l $f | awk '{print $5}') bytes"
done
