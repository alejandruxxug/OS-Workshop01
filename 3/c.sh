#!/bin/bash
# Operador | - Pipe: la salida del comando izquierdo es la entrada del comando derecho

echo "Ejemplo 1: Contar líneas"
echo -e "línea1\nlínea2\nlínea3" | wc -l

echo ""
echo "Ejemplo 2: Filtrar con grep"
echo -e "manzana\nbanana\ncereza\nberenjena" | grep "ana"

echo ""
echo "Ejemplo 3: Encadenar pipes"
echo -e "c\nb\na\nd" | sort | head -3
