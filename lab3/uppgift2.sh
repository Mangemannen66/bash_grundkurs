#!/bin/bash

################################################
# Uppgift 2 laboration 3                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att öppna en fil om den#
# existera och att den  är läs och skrivbar.   #
################################################

    if [ ! -e ./recept.txt ]; then #Gör en vilkorskoll gällande inte existerande fil
	echo "Filen recept.txt finns inte. Avslutar..."
	exit 1
    elif [ ! -r ./recept.txt ]; then #Gör en vilkorskoll gällande inte läsbar fil.
	echo "Filen är inte läsbar. Avslutar..."
	exit 1
    elif [ ! -w ./recept.txt ]; then #Gör en vilkorskoll gällande inte skrivbar fil
	echo "Filen går inte att skriva till. Avslutar..."
	exit 1
    elif [ -w ./recept.txt -a -r ./recept.txt ]; then #Om fil är både läs och skrivbar
	   nano recept.txt 			      #Öppna fil med nano
   	fi
   	exit 0
