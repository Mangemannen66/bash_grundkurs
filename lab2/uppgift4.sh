#!/bin/bash
#Skript som ber användare om vilken färg som är dennes favoritfärg
#Om personen inte svarar inom 5 sekunder skrivs favoritfärgen ut som röd
Color="röd"			#Här sätts variabeln som röd
read -t 5 -p "Vilken är din favoritfärg? " Color	#Här bes användaren att mata in favoritfärg
Color=${Color:="röd"}				#Här sätts variabeln igen om inte tidsfristen går ut
echo -e "\nDin favorit färg är $Color"		#Här printas favoritfärgen ut beroende tidsrymd
exit 0				#Skriptet avslutas
