#!/bin/bash
# Contar subcarpetas y archivos en cada subcarpeta

dir=${1:-.}
for d in $dir/*/; do
    [ -d "$d" ] || continue
    subs=$(find "$d" -mindepth 1 -type d | wc -l)
    files=$(find "$d" -type f | wc -l)
    echo "$(basename $d): $subs subcarpetas, $files archivos"
done
