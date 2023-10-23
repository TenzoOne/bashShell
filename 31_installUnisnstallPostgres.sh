#!/bin/bash
# Programa que permite manejar la utilidades de PostGres
# Autor: Tony Pinto Email: tony@tpgimeno.com

opcion=0
directorioBackup=""
backup=""

#Función para instalar postgres
instalar_postgres() {
    echo -e "\nVerificar instalación PostGres ..."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\nPostGres ya se encuentra instalado en el equipo"
    else
        read -sp $'\nIngresar la contraseña sudo:' password
        read -sp $'\nIngresar la contraseña para PostGres:' passwordPostgres
        echo "$password" | sudo -S dnf update
        echo "$password" | sudo -S dnf install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{passwordPostgres}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi
    read -p $'\nPRESIONE [ENTER] para continuar ...'

}

#Función para desinstalar postgres
desinstalar_postgres() {
    read -sp $'\nIngresar la contraseña sudo:' password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S pg_dropcluster --stop 12 main
    echo "$password" | sudo -S dnf remove postgresql\*
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    sudo -S dnf autoremove
    read -p $'\nPRESIONE [ENTER] para continuar ...'

}

#Función para sacar un respaldo
respaldo() {
    echo -e "\nSacar respaldo..."
    echo "Directorio respaldo: $1"
}

#Función para restaurar respaldo
restaurar_respaldo() {
    echo -e "\nRestaurar respaldo..."
    echo "Nombre del respaldo: $1"
}


while :
do
    #Limpiar la pantalla
    clear
    #Desplegar el menu de opciones
    echo "-----------------------------------------"
    echo "PGUTIL - Programa de Utilidad de Postgres"
    echo "-----------------------------------------"
    echo "              MENU PRINCIPAL             "
    echo "-----------------------------------------"
    echo "1. Instalar Postgres"
    echo "2. Desinstalar Postgres"
    echo "3. Realizar un respaldo"
    echo "4. Restaurar un respaldo"
    echo "5. Salir"

    #Leer los datos del usuario - capturar información

    read -n1 -p "Ingresar una opción [1 - 5]: " opcion
    
    #Validar la opción ingresada
    case $opcion in 
        1)
            instalar_postgres
            sleep 3
            ;;
        2)
            desinstalar_postgres
            sleep 3
            ;;
        3)
            read -rep $'\nIngresar el directorio de Backup:' directorioBackup
            respaldo $directorioBackup
            sleep 3
            ;;
        4)
            read -rep $'\nIngresar backup a restaurar:' backup
            restaurar_respaldo $backup
            sleep 3
            ;;
        5)
            echo -e "\nSalir del Programa"
            exit 0
            ;;
    esac
done