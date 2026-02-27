#!/bin/bash
# Operador PIPE - La salida de a.sh se canaliza a otro comando

echo ""
echo "Ejemplo: Ejecutar a.sh y contar total de líneas de salida"
./a.sh | wc -l # wc -l es un comando que cuenta el total de lineas de salida

