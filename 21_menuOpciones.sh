# ! /bin/bash
# Programa que permite manejar la creacion de archivos y directorios

echo "Archivos - Directorios"

if [[ $# != 2 ]]; then
    echo "Numero de parametros incorrectos"
    exit 1
fi

if [[ $1 == "d" ]]; then
    mkdir -m 755 $2
    echo "Directorio creado correctamente"
    ls -la $2
elif [[ $1 == "f" ]]; then
    touch $2
    echo "Archivo creado correctamente"
    ls -la $2
else
    echo "No existe esa opcion: $1"
fi
