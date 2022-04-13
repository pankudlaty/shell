#!/bin/bash
files_count=$(ls -l . | egrep -c '^-')
dir_count=$(ls -l . | egrep -c '^d')

echo Plików: $files_count
echo Katalogów: $dir_count
if [ $files_count -eq 0 ] 
then
    echo Plików:
else
    f=$(printf "%-${files_count}s" "+")
    echo Plików: "${f// /+}"
fi
if [ $dir_count -eq 0 ]
then
    echo Katalogów:
else
    d=$(printf "%-${dir_count}s" "+")
    echo Katalogów: "${d// /+}"
fi
