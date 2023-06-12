#!/bin/bash

if [ "$1" -gt 0 ] 2>/dev/null; then
  num_files="$1"
else
  num_files=30
fi

for ((i=1; i<=$num_files; i++))
do
  touch "file$i.txt"
done

echo "Utworzono $num_files plików."
