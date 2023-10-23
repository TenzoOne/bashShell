# ! /bin/bash
#  Programa para ejemplificar el uso de la senencia case.

opcion=""

echo "Ejemplo Sentencia case"
read -p "Indique una opcion de la A - Z : " opcion
echo -e "\n"

case $opcion in 
    "A") echo -e "\n Operacion Guardar Archivo";;
    "B") echo "Operacion eliminar archivo";;
    [C-E]) echo "No esta implementada la operacion";;
    "*") "Opcion Incorrecta"
esac
