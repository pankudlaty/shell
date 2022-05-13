#!/bin/bash
if [ "$#" -lt 2 ] ; then
    echo "Za mało argumentów"
    exit 0
else
    for file in $@
    do
        if [ ! -f  $file ] ; then 
            echo "Plik nie istnieje lub nie jest plikiem zwykłym"
            exit 0
        elif [ ! -s $file ] ; then
            echo "Plik jest pusty"
            exit 0
        else
            echo "dalej"
        fi
    done
    echo "dalej"
fi


