#!/bin/bash

#sprawdzanie liczy arg
if [ "$#" -le 1 ]; then
    echo "Za mało argumentów"
    exit 0
fi
#sprawdzanie pliku docelowego
if ! [[ -f $1 ]]; then
    echo "Plik docelowy nie istnieje lub nie jest zwykłym plikiem"
    exit 0
elif ! [[ -r $1 ]]; then
    echo "Brak uprawnień do odczytu pliku docelowy"
    exit 0
elif ! [[ -w $1 ]]; then
    echo "Brak uprawnień do zapisu do pliku docelowy"
    exit 0
fi
#sprawdzanie plików źródłowych
for i in "${@:2}"
do
    if ! [[ -f "$i" ]]; then
        echo "Plik $i nie istnieje lub nie jest zwykłym plikiem"
        exit 0
    elif ! [[ -r "$i" ]]; then
        echo "Brak uprawnień do odczytu pliku $i"
        exit 0
    elif ! [[ -s "$i" ]]; then
        echo "Plik jest pusty $i"
        exit 0
    fi 
done
#łączenie plików
cat "${@:2}" > $1
