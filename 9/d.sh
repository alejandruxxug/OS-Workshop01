#!/bin/bash
# Archivos modificados últimas 24h

dir=${1:-.}
find $dir -type f -mmin -1440 -print 2>/dev/null | while read f; do
    echo $(basename $f) - $(ls -l "$f" | awk '{print $6,$7,$8}')
done
