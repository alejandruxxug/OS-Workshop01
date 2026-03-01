#!/bin/bash
# Comprimir carpeta en .tar.gz

dir=${1:-.}
tar -czf backup_$(date +%Y%m%d).tar.gz "$dir"
echo hecho
