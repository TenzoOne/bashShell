# !/bin/bash
# Programa para revisar la declaracion de variables

opcion=0
nombre=Marco

echo "Opcion: $opcion y $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos
export nombre

# llamar al siguiente Script
./2_variables_2.sh