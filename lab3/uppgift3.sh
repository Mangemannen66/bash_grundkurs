#!/bin/bash

################################################
# Uppgift 3 laboration 3                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript där användaren ska skriva  #
# in ett tal mellan 1 0ch 10. Om han skriver   #
# fel får han ett tråkigt meddelande.          #
################################################

    read -p  "Mata in ett tal mellan 1 till 10: " Tal #Ett tal matas in som blir varabeln Tal
    if [ $Tal -gt 10 ] || [ $Tal -lt 1 ]; then # Här testas om talet håller sig inom ramen 1-10
	echo "Pucko! Det där är inte ett tal mellan 1 till 10" # om talet inte gjorde det skrivs detta meddelande ut
    else 
	echo "Tackar så mycket!"  # Detta svar ges vid ett giltligt tal
   fi
    exit 0 	#Skriptet avslutas
