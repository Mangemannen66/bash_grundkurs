#!/bin/bash

################################################
# Uppgift 1 laboration 3                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att jämföra två tal    #
# och för att se om talen är lika och om vilket#
# tal som är störst.                           #
################################################

read -p "Skriv tal 1:  " Tal1 #Tal 1 begärs
read -p "Skriv tal 2:  " Tal2 #Tal 2 begärs
    if [ "$Tal1" -eq "$Tal2" ]; then #Här testas om talen är lika
	echo "$Tal1 är lika med $Tal2" #Talen är lika
    else
	echo "$Tal1 är inte lika med $Tal2" #Talen är inte lika
    fi

    if [ "$Tal1" -lt "$Tal2" ]; then #Här testas om tal1 är lägre än tal2
	echo "$Tal1 är mindre än $Tal2" #tal1 är lägre än tal2
    elif [ "$Tal1" -gt "$Tal2" ]; then #Här testas om tal1 är större än tal2
	echo "$Tal1 är större än $Tal2" # Tal1 är stööre än tal2
    fi
exit 0 # skript avslutas
