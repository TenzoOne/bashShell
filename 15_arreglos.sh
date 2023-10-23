arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Juan, Pedro, Susana, Bog, Fusa, Zipa)
arregloRangos=({A..G} {10..20})

#imprimiré todos los valores
echo "Arreglo del tema de Números: ${arregloNumeros[*]}"
echo "Arreglo del tema de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo del tema de Rangos: ${arregloRangos[*]}"

#imrimiré el tamaño de los arreglso
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos: ${#arregloRangos[*]}"

#>Imprimri las posicion 2 de cada uno
echo "posición 3 Arreglo de Números: ${arregloNumeros[3]}"
echo "posición 3 Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "posición 3 Arreglo de Rangos: ${arregloRangos[3]}"

#añadir y elminar valores de un arreglo.
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
echo "posición 7 Arreglo de Números: ${arregloNumeros[7]}"
