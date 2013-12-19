#!/bin/bash
#Ett skript som ber användaren att mata in ett namn.
#Därefter så lägg namnet till i en text fil som ligger under home-mappen.
read -p "Uppge ditt namn! " Name	#Användare uppmanas att mata in ett namn.
echo $Name >> $HOME/namn.txt		#Namnet läggs till i en textfil som ligger under home-mappen
exit 0					#Programmet avslutas
