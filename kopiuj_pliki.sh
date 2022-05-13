#!/bin/bash

#sprawdzanie liczy arg
if [ "$#" -le 1 ]; then
    echo "Za mało argumentów"
    exit 0
fi
#sprawdzanie czy plik źródłowy istnieje
if ! [[ -e $1 ]]; then
    echo "Plik nie istnieje"
    exit 0
fi
#sprawdzanie docelowych katalogów
for i in "${@:2}"
do
    if ! [[ -d "$i" ]]; then
        echo "Katalog $i nie istnieje lub nie jest to katalog"
        exit 0
    elif ! [[ -w "$i" ]]; then
        echo "Brak uprawnień zapisu do katalogu $i"
        exit 0
    fi
done
#kopiowanie pliku do katalogów docelowych
for i in "${@:2}"
do
    cp $1 $i
done
