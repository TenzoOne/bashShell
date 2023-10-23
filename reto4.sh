# ! /bin/bash
# Programa que permite manejar las utilidades de postgres


opcion=0

while :
do
    #Limpiar pantalla
    clear
    #Despliega el menu de opciones
    echo "_________________________________________"
    echo "                                         "
    echo "_________________________________________"
    echo "            MENU PRINCIPAL               "
    echo "-----------------------------------------"
    echo "1. Procesos Actuales"
    echo "2. Memoria disponible"
    echo "3. Espacio en disco"
    echo "4. Informacion de red"
    echo "5. Variables de entorno configuradas"
    echo "6. Informacion Programa"
    echo "7. Backup informacion"
    echo "8. Salir."
    
    #Leer datos que escrbie el usuario - captura de informacion 
    read -n1 -p "Ingrese una opcion [1-8]:" opcion

    #validar la opcion ingresada
    case $opcion in
        1)
            echo -e "\nProcesos actuales....."
            ps
            ;;
        2) 
            echo -e "\nMemoria disponible....."
            sleep 3
            ;;
        3) 
            echo -e "\nEspacio en disco......"
            sleep 3
            ;;
        4) 
            echo -e "\nInformacion en red......."
            ifconfig
            sleep 3
            ;;
        5)
            echo -e  "\nVariables de entorno configuradas........"
            env
            sleep 1
            ;;
        6)
            echo -e  "\nInformacion del sistema......."
            neofetch
            sleep 1
            ;;
        7)
            echo -e  "\nBackup de informacion......"
            env
            sleep 1
            ;;
        8) 
            echo -e "\nSalir del programa"
            exit 0
            ;;
    esac
done
