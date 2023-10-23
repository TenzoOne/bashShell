# ! /bin/bash
#  Programa para ejemplificar el uso de expresiones condicionales

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad:" edad
read -p "Ingrese su pais:" pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones condcionales con numeros"
if [ $edad -lt 10 ]; then
    echo "La persona es un ninio o ninia"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
    echo "La persona se trata de un adolescente"
else
    echo "La persona es una mayor de edad"
fi

echo -e "\nExpresiones condcionales con cadenas"
if [ $pais = "EEUU" ]; then
    echo "La persona es Americana"
elif [ $pais = "Ecuador" ] && [ $pais = "Colombia" ]; then
    echo "La persona es de sudamerica"
else
    echo "Se desconoce la nacionalidad."
fi

echo -e "\nExpresiones condicionales con archivos"
#verificamos que exista el archivo.

if [ -d $pathArchivo ]; then
    echo "El directorio $pathArchivo existe"
else
    echo "El directorio $pathArchivo no existe"
fi
