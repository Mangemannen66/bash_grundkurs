#!/bin/bash


################################################
# Uppgift 2 laboration 4                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att omvandla valuta.   #
# Du kan omvandla kronor till dollar.          #
# Dollar till kronor.                          #
################################################

Usdrate=6.5			#Här sätts dollarkursen. Tyvärr konstant än så länge.


while true; do
	echo
	echo    "                     Valutaomvandlare gjord i BASH                     "
	echo	 ______________________________________________________________________________
	read -p "vill du konvertera från kronor eller dollar? [k/d]    [Q/q]-inmatning Avslutar " Rep
#	[ "$Rep" = "" ] && continue
	case $Rep in
	    K*|k*)
		read -p "Belopp i Kronor?: " Sek
		Dollar=$( echo "scale=3;$Sek / $Usdrate" | bc )
		echo
		echo "$Sek kronor blir $Dollar dollar"
		sleep 3
		clear
	    ;;
	   D*|d*)
		read -p "Belopp i Dollar? " Usd
		Kronor=$( echo "$Usd * $Usdrate" | bc )
		echo
		echo "$Usd dollar blir $Kronor kronor"
		sleep 3
		clear
		
	    ;;
	  Q*|q*)
		exit 0
	    ;;
	    * )
		echo "Du följde inte instruktionerna"
	    ;;
	    esac
	   
	done
	exit 0

