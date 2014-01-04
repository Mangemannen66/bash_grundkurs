#!/bin/bash

################################################
# Uppgift 1 laboration 4                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att skriva in två tal  #
# och för att sedan göra uträkningar med alla  #
# fyra räknesätten                             #
################################################

read -p "Skriv in ett tal: " Tal1      # Första talet begärs
read -p "Skriv in ett tal till: " Tal2 # Andra talet begärs

	#Här görs beräkningarna och tilldelas i varsin variabel för 
	#respektive räknesätt.

	let Sum="Tal1+Tal2"
	let Diff="Tal1-Tal2"
	let Mult="Tal1*Tal2"
	let Div="Tal1/Tal2"
	let Rest="Tal1%Tal2"

    #Här skrivs det ut snygg och prydligt =)

    echo "$Tal1 + $Tal2 = $Sum"
    echo "$Tal1 - $Tal2 = $Diff"
    echo "$Tal1 * $Tal2 = $Mult"
    echo "$Tal1 / $Tal2 = $Div: Rest:$Rest "

exit 0	#Skript avslutas
