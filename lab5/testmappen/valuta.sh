#!/bin/bash
Dollarkurs=6.5
read -p "vill du växla från kronor eller dollar? k/d " Konvertera

if [ $Konvertera = k ]; then
	read -p "hur många kronor? " Kr
	Dollar=$( echo "scale=3;$Kr / $Dollarkurs" | bc )
printf "$Kr kronor är $Dollar\n"

elif [ $Konvertera = d ]; then
	read -p "hur många dollar? " Us
	Kronor=$( echo "$Us * $Dollarkurs" | bc )
printf "$Us dollar är $Kronor kronor\n"

else
printf "du har inte valt någon valuta\n"

fi
exit 0
