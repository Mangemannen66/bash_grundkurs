#!/bin/bash

################################################
# Uppgift 1 laboration 5                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att skriva in ett tal  #
# +som ligger mellan 10 och 100.               #
# +Skriptet räknar ner till 1 efter <ENTER>    #
# +Når loopen är klar avslutas skriptet.       #
################################################

i=1

read -p "Välj ett nummer mellan 10 och 100: " count
  	until [ $count -eq $i ]
	    do
		echo
	    	echo "$count"
	    	count=$[count -1]
		sleep 0.3
		clear
	    done
	exit 0
