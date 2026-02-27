#!/bin/bash
# Operador > 

echo "Hola Mundo" > output.txt
echo "El contenido de output.txt es:"
cat output.txt

# Otro ejemplo:
ls -la > lista_archivos.txt
echo ""
echo "Se creó lista_archivos.txt con el resultado de 'ls -la'"

# Con el archivo C contamos las lineas de salida de este script