# ! /bin/bash
#  Programa para ejemplificar el uso de la senencia de desicion if anidados.

notaClase=0
continua=""

echo "Ejemplo Sentencia If -else"
read -n1 -p "Indique cual es su nota (1-9)" notaClase
echo -e "\n"

if [ $notaClase -ge 7 ]; then
    echo "El alumno pasa la materia"
    read -p "Continuara estudiando en el siguiente nivel (s/n):" continua
    if [ $continua = 's' ]; then
        echo "Bienvenido al siguiente nivel"
    else 
        echo "Gracias por trabajar con nostros, mucha suerte !!!!!!"
    fi
else
    echo "El alumno reprueba la materia"
fi
