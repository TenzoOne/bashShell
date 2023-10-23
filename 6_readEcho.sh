# ! /bin/bash
# Progama para ejemplificar como capturar la informacion del usuario utilizando el comando , echo , read , $REPLY
# Autor: Carlos Garcia - TenzoOne

option=0
backupName=""

echo "Programa de utilidades Postgres"
echo -n "INgresar una opcion:"
read
option=$REPLY
echo -n "Ingresar el nombre del archivo del backup:"
read
backupName=$REPLY
echo "Opcion: $option, backupName: $backupName"
