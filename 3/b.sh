#!/bin/bash
# Operador && - Ejecuta el segundo comando solo si el primero tuvo éxito (código de salida 0)

echo "Creando directorio..." && mkdir -p mi_carpeta && echo "Directorio creado exitosamente"

# Otro ejemplo: ir a una carpeta y listar (solo lista si cd tuvo éxito)
cd mi_carpeta && pwd && ls -la
