#!/bin/bash

################################################
# Uppgift 3 laboration 5                       #
# Magnus Danielsson LX13                       #
# Ett enkelt skript för att utröna om filen    #
#+while.dat finns.                             #
################################################

File=$HOME/lx13mappen/bash_grundkurs/lab5/while.dat

    while [ ! -e $File ]; do #Om filen inte existerar
	:		     # sätts skriptet i on hold
    done		     # tills en fil skapas och
	echo "Filen hittades" # detta meddelande printas ut =)
    exit 0		     # Skriptet avslutas
