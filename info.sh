#!/bin/bash
files_count = $(ls -l . | egrep -c '^-')
dir_count = $(ls -l . | egrep -c '^d')

echo "Plików:" $filesCount
echo "Katalogów:" $dirCount
