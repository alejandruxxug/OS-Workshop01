#!/bin/bash

arr=(5 2 8 1 9 3 4)

min=${arr[0]}
max=${arr[0]}

for num in "${arr[@]}"; do
    if [ "$num" -lt "$min" ]; then 
    min=$num; 
    fi

    if [ "$num" -gt "$max" ]; then 
    max=$num; 
    fi
done

echo "El menor es $min"
echo "El mayor es $max"
