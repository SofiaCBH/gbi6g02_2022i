#! /bin/bash
for f in exam1/multi_copia/*.txt #la variable "f" corresponde a las rutas de los archivos
do
        x=$( head -n1 "$f" |grep -o " " | wc -l ) #el resultado de cada variable se le denomina, el resultado viene dado por el codigo que cuenta las columnas de los archivos
        if [ $(( "x" % 2 )) -eq 0 ]; #El bucle if nos indica si el numero es par o impar,"cociente" al dividir por 2, si es existe cociente es impar, si es igual a 0 es par
        then
                echo "Par: $f tiene $x columnas" >> for_if.txt #Nos muestra los numeros pares
        else
                echo "Impar: $f tiene $x columnas"  >> for_if.txt #Nos muestra los numeros impares
        fi

done
