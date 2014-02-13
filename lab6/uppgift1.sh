#!/bin/bash

################################################
# Uppgift 1 laboration 6                       #
# Magnus Danielsson LX13                       #
# Ett skript som kontrollerar om minst 2       #
# +argument skickas med in i skriptet.         #
# +om inte två argument skickas med skrivs     #
# +ett felmeddelande.                          #
################################################

Arg1="$1"
Arg2="$2"

if [ $# -ne 2 2> /dev/null ];then
   echo "`basename $0` Behöver två argument"
   exit 1 
else
   echo "Argumenten till $0 är: $1 och $2"
   exit 0
fi
