#!/bin/bash
fichero=$1
if [ -f $fichero ]; then
  while read linea; do
    response=$(nmap -p $2 -oG - $linea | grep open/$3/$4/$5)
  echo $linea: $response
done < $1
else
  echo "Tienes que indicar un archivo donde se alojan la lista de IP's"
fi