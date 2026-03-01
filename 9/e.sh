#!/bin/bash
# Archivos que superan X bytes

dir=${1:-.}
read -p "tamano minimo (bytes): " n

find $dir -type f -size +${n}c 2>/dev/null | while read f; do
    s=$(ls -l "$f" | awk '{print $5}')
    echo $(basename $f): $s bytes
done
