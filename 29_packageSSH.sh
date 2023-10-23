# ! /bin/bash
# Programa para ejemplificar ka firna de como transferir por la red utilizando el comando rsync, utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia


echo "Empaquetar todos los scripts de la carpeta shelLCOurse y transferirlos por la red a otro equipo utilizando el comanndo rsync"

host
read -p "Ingresar el host: " host
read -p "Ingresar el usuario: " usuario
echo -e "\n En este momento se procedera a empaquetar la carpeta y transferirla segun los datos ingresados"

rzing -avz $(pwd) $usuario$host:/users/martosfre/Downloads/platzi
