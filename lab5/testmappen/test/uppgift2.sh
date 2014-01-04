#!/bin/bash

    if [ ! -e ./recept.txt ]; then #Gör en vilkorskoll gällande inte existerande fil
	echo "Filen recept.txt finns inte. Avslutar..."
	exit 1
    elif [ ! -r ./recept.txt ]; then #Gör en vilkorskoll gällande inte läsbar fil.
	echo "Filen är inte läsbar. Avslutar..."
	exit 1
    elif [ ! -w ./recept.txt ]; then #Gör en vilkorskoll gällande inte skrivbar fil
	echo "Filen går inte att skriva till. Avslutar..."
	exit 1
    elif [ -w ./recept.txt -a -r ./recept.txt ]; then
	   nano recept.txt
   	fi
   	exit 0
