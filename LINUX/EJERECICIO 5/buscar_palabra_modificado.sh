#!/bin/bash


if [ "$#" -ne 2 ]; then
  echo "Se necesitan únicamente dos parámetros para ejecutar este script (URL y palabra a buscar)"
  exit 1
fi


URL="$1"
PALABRA="$2"
FICHERO="contenido_pagina.txt"


curl -s "$URL" -o "$FICHERO"


NUMERO_OCURRENCIAS=$(grep -o -i "$PALABRA" "$FICHERO" | wc -l)

if [ "$NUMERO_OCURRENCIAS" -eq 0 ]; then
  echo "No se ha encontrado la palabra \"$PALABRA\""
elif [ "$NUMERO_OCURRENCIAS" -eq 1 ]; then
  PRIMERA_LINEA=$(grep -n -i "$PALABRA" "$FICHERO" | head -n 1 | cut -d: -f1)
  echo "La palabra \"$PALABRA\" aparece 1 vez"
  echo "Aparece únicamente en la línea $PRIMERA_LINEA"
else
  PRIMERA_LINEA=$(grep -n -i "$PALABRA" "$FICHERO" | head -n 1 | cut -d: -f1)
  echo "La palabra \"$PALABRA\" aparece $NUMERO_OCURRENCIAS veces"
  echo "Aparece por primera vez en la línea $PRIMERA_LINEA"
fi
