# ! /bin/bash
# Progama para ejemplificar como capturar la informacion del usuario utilizando y validar
# Autor: Carlos Garcia - TenzoOne

option=0
backupName=""
clave=""

echo "Programa de utilidades Postgres"
#Acepta el ingreso de informacion de solo un caracter

read -n1 -p "Ingresar una opcion:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opcion: $option, backupName: $backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"
