#!/bin/bash
#Ett skript som ber användaren att mata in ett namn.
#Därefter så lägg namnet till i en text fil som ligger i aktuell mapp.
read -p "Uppge ett namn!" Name	#Skriptet ber dig att mata in ett namn.
echo $Name >> namn.txt		#Det inmatade namnet skrivs till textfilen namn.txt som ligger i aktuell mapp.
exit 0				#Programmet avslutas
