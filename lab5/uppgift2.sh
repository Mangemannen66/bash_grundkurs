#!/bin/bash

################################################
# Uppgift 2 laboration 5                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att skriva in ett tal  #
#+som ligger mellan 10 och 100.                #
#+Här testar skriptet om inslagen siffra är    #
#+inom ramen d v s mellan 10 och 100           #
#+Skriptet räknar ner till 1 efter <ENTER>     #
#?Notera annat tillvägagångsätt gällande       #
#+loopframställan.                             #
################################################

i=1

read -p "Välj ett nummer mellan 10 och 100: " count
    if [ "$count" -lt 10 ] || [ "$count" -gt 100 ] ;then
	echo "Ett nummer MELLAN 10 och 100!"
    else
  	while [ $count -gt $i ]
	    do
		echo
	    	echo "$count"
	    	count=`expr $count - 1`
		sleep 0.2
		clear
	    done
    fi
	exit 0
