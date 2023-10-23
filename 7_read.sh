# ! /bin/bash
# Progama para ejemplificar como capturar la informacion del usuario utilizando el comando read
# Autor: Carlos Garcia - TenzoOne

option=0
backupName=""

echo "Programa de utilidades Postgres"
read -p "Ingresar una opcion:" option
read -p "Ingresar el nombre del archivo del backup:" backupName
echo "Opcion: $option, backupName: $backupName"
