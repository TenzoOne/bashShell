# ! /bin/bash
#  Programa para ejemplificar el uso de la senencia de desicion if else

notaClase=0
edad=0

echo "Ejemplo Sentencia If -else"

read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"

if (( $notaCLase >= 7 )); then
    echo "El alumno aprueba la materia"
else
    echo "El alumno reprueba la materia"
fi

read -p "Indique cual es su edad:" edad

if [ $edad -le 18 ]; then
    echo "La persona no puede sufragar/votar"
else
    echo "La persona puede sufragar/votar"
fi
