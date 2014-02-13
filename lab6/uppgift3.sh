#!/bin/bash

################################################
# Uppgift 3 laboration 6                       #
# Magnus Danielsson LX13                       #
# Ett skript för att rita en linje med hjälp   #
# +av en funktion. Ett heltalsargument behövs  #
# +för att bestämma antalet asterixer som ska  #
# +skrivas.                                    #
################################################

Nr=$1
Asterix=0

if [ $# -ne 1 ]; then
    echo "$0: behöver ett argument"
    echo $# > /dev/null
    exit 1
fi

if ! [ $Nr -eq $Nr &> /dev/null ]; then
    echo "Använd endast heltal"
    exit 1
fi

function draw {
    while [ $Asterix -lt $Nr ];do
   	printf "*"
	((Asterix++))
	done
	printf "\n"
	}

draw

exit 0
