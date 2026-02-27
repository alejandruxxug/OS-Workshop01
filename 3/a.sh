#!/bin/bash
# Operador > - Redirección de salida (escribe stdout en un archivo, sobrescribiendo)

echo "Hola Mundo" > output.txt
echo "El contenido de output.txt es:"
cat output.txt

# Otro ejemplo: guardar la lista de archivos en un archivo
ls -la > lista_archivos.txt
echo ""
echo "Se creó lista_archivos.txt con el resultado de 'ls -la'"
