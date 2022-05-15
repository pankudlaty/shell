#!/bin/bash
if [ "$#" -gt 0 ]; then 
    exit 0
fi

files_count=$(ls -l . | egrep -c '^-')
dir_count=$(ls -l . | egrep -c '^d')

echo Plików: $files_count
echo Katalogów: $dir_count
if [ $files_count -eq 0 ] 
then
    echo Plików:
else
    echo Plików: $(printf "%0.s+" $(seq 1 $files_count))
fi
if [ $dir_count -eq 0 ]
then
    echo Katalogów:
else
    echo Katalogów: $(printf "%0.s+" $(seq 1 $dir_count))
fi
