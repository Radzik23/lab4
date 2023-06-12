#!/bin/bash

SCRIPT_PATH="$1"

if [ -z "$SCRIPT_PATH" ]; then
  echo "Podaj ścieżkę do pliku skryptu."
  exit 1
fi

if [ ! -f "$SCRIPT_PATH" ]; then
  echo "Podany plik nie istnieje."
  exit 1
fi

echo "Dostępne opcje dla skryptu: $SCRIPT_PATH"
grep -E "^[[:space:]]*[-]{1,2}[a-zA-Z0-9_]+" "$SCRIPT_PATH" | sed -E "s/^[[:space:]]*([-]{1,2}[a-zA-Z0-9_]+).*$/\1/"

