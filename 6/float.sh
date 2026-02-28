#!/bin/bash
# Condicionales con números flotantes en Bash
# Bash no soporta decimales nativamente entonces usamos 'bc' 
echo "Ingrese un número (true si es mayor a 4.5): "
read VAR
# Usamos bc (Basic Calculator)
# bc devuelve 1 si verdadero, 0 si falso
if [ $(echo "$VAR > 4.5" | bc) -eq 1 ]; then
    echo "$VAR es mayor que 4.5"
else
    echo "$VAR es menor o igual que 4.5"
fi


