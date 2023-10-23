arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de numeros"

for num in ${arregloNumeros[*]}
do
    echo "Numero: $num"
done

echo "Iterar en la lista de cadenas"

for nom in "Marco" "Pedro" "Luis" "Daniela"
do
    echo "Nombres: $nom"
done

echo "Iterar en archivos"

for file in *
do 
    echo "Nombre archivo: $file"
done

echo "Iterar utilizando un comando"
for fil in $(ls)
do
    echo "Nombre Archivo: $fil"
done

echo "Iterar utilizando el formato tradicional"
for((i = 1; i<10; i++))
do
    echo "Numero : $i"
done
