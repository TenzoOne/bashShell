# ! /bin/bash
#  Programa para ejemplificar el uso de la senencia de desicion if else if, else

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"
read -p "Indique cual es su edad:" edad

if [ $edad -le 18 ]; then
    echo "La persona es adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulta mayor"
fi
