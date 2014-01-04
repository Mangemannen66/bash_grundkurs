#!/bin/bash

################################################
# Uppgift 4 laboration 5                       #
# Magnus Danielsson LX13                       #
# Ett skript för att räkna ut betyget genom    #
#+att räkna ihop poängen från kollumn 2        #
#+i resultatdokumentet gällande testet och     #
#+ge betyget IG, G eller VG.		       #
################################################

G=30 # Här sätts lite variabler
VG=48
Sum=0
File=test.txt
#
# Här plockas poäng från kolumn 2 och rad för rad
# och påbörjas från rad 2.
#
Points=$(tail -n +2  $File | awk '{print $2}')
#
# här loopas det och m h a en array plockas poäng rad för rad.
#
    for i in ${Points[*]};do
	Sum=$((Sum+i))
   done
#
# Här presenteras resultatet d v s antal poäng och med 
# hjälp av ifsatser får vi fram betyget.
	clear
	echo "   $USER: DITT BETYG PÅ TENTAN!    "
	echo ":::::::::::::::::::::::::::::::::::" 
	echo "du fick totalt $Sum poäng på provet"
        echo ":::::::::::::::::::::::::::::::::::" 

   if [ $Sum -ge $VG ];then
	echo "Detta gav dig ett VG"
   elif [ $Sum -ge $G -a  $Sum -le $VG ];then
	echo "Detta gav dig ett G"
   else
	echo "Du fick IG på provet!"
   fi
exit 0 #Skript avslutas.
