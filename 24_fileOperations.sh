# ! /bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: Marco Toscano Freire - @martosfre

echo "Operaciones en un archivo"
mkdir -m 755 backupScripts

echo -e "\nCopiar los scripts del directorio actual al nuevo directorio backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMover el directorio backupScripts a otra ubicacion: $HOME"
mv backupScripts $HOME

echo -e "\nMover los archivos .txt"
rm *.txt
