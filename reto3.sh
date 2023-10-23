# ! /bin/bash
# Reto 3 , solicitar  un valor del 1 al 5 , segun el valor ingresado validar utilzando condicionales e imprimir el resultado
# Construir una expresion de validacion numerica, cadenas, archivos segun sea la opcion ingresada.

opcion=""

echo "SELECCIONA UNA OPCION"
echo "1 .- Activar alarma"
echo "2 .- Activar alexa"
echo "3 .- Apagar luces"
echo "4 .- Aapagar pantalla"
echo "5 .- Desbloquear laptop"
echo "6 .- Activar luces principales"
echo "7 .- Mostrar luces del patio"
echo "8 .- jarvis activate"
echo "9 .- Pon una serie en la pantalla"

read -n1 -p "Selecciona alguna de las opciones (1-9)" opcion

if [ $opcion -eq 1 ]; then
    echo "La alarma ha sido activada"
elif [ $opcion -eq 2 ]; then
    echo "La alexa ha sido activada"
elif [ $option -eq 3 ]; then
    echo "Luces apagadas"
elif [ $option -eq 4 ]; then
    echo "Pantalla apagada"
else
    echo "No se encuentra disponible la opcion"
fi
