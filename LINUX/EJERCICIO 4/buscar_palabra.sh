#!/bin/bash


URL="https://www.returngis.net/"
FICHERO="contenido_pagina.txt"


curl -s "$URL" -o "$FICHERO"


if [ -z "$1" ]; then
  echo "Por favor, proporciona una palabra para buscar."
  exit 1
fi

PALABRA="$1"


NUMERO_OCURRENCIAS=$(grep -o -i "$PALABRA" "$FICHERO" | wc -l)

if [ "$NUMERO_OCURRENCIAS" -eq 0 ]; then
  echo "No se ha encontrado la palabra \"$PALABRA\""
else
  PRIMERA_LINEA=$(grep -n -i "$PALABRA" "$FICHERO" | head -n 1 | cut -d: -f1)
  echo "La palabra \"$PALABRA\" aparece $NUMERO_OCURRENCIAS veces"
  echo "Aparece por primera vez en la línea $PRIMERA_LINEA"
fi
