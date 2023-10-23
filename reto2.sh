# ! /bin/bash
# Reto 2 para solicitar informacion 

nombres=""
apellidos=""
edad=""
direccion=""
telefono=""


read -p "Ingrese sus nombres: " nombre
read -p "Ingrese sus apellidos: " apellidos
read -p "Ingrese su edad: " edad
read -p "Igrese su direccion: " direccion
read -p "Ingrese su numero de telefono:" telefono

echo -e "Su informacion es la siguiente \n"
echo "$nombre $apellidos , $edad de edad , vive en $direccion y su numero de telefono es $telefono"
