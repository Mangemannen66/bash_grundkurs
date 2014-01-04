#!/bin/bash


################################################
# Uppgift 2 laboration 4                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att omvandla valuta.   #
# Du kan omvandla kronor till dollar.          #
# Dollar till kronor.                          #
################################################

Usdrate=6.5			#Här sätts dollarkursen. Tyvärr konstant än så länge.


while true; do		# loopen körs så länge inmatning sker, med undantag för Q/q som avbryter.
	echo
	echo    "                     Valutaomvandlare gjord i BASH                     "
	echo	 ______________________________________________________________________________
	read -p "vill du omvandla från kronor eller dollar? [k/d]    [Q/q]-inmatning Avslutar " Rep

	case $Rep in	# En case-sats där utifrån input, så utförs kommandon relaterade till input.
	    K|k|kr|KR|kronor|Kronor) #Om man skriver in K, k, kr, kronor eller Kronor, 
                                     # så görs en valutaomräkning från  kronor till dollar.
		read -p "Belopp i Kronor?: " Sek
		Dollar=$(echo "scale=3;$Sek / $Usdrate" | bc)
		echo
		echo "$Sek kronor blir $Dollar dollar"
		sleep 3
		clear
	    ;;
	   D|d|usd|USD|dollar|Dollar) #Om man skriver in D, d, usd, USD, dollar eller Dollar, 
                                     # så görs en valutaomräkning från dollar till kronor.
		read -p "Belopp i Dollar? " Usd
		Kronor=$(echo "$Usd * $Usdrate" | bc)
		echo
		echo "$Usd dollar blir $Kronor kronor"
		sleep 3
		clear
		
	    ;;
	  Q|q|quit|Quit) #Skriver man Q, q, quit eller Quit, avslutas programmet.
		exit 0
	    ;;
	    * ) #Vid fel inmatning skrivs detta felmeddelande ut och du återgår till tidigare 
                 #meny gällande från vilken valuta vill du omvandla
		echo
		echo "        DU följde inte instruktionerna! Prova igen!"
		sleep 1.2
		clear
	    ;;
	    esac
	   
	done
	exit 0 #Programmet avslutas

