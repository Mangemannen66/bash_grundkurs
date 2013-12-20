#!/bin/bash

read -p "Skriv tal 1:  " Tal1
read -p "Skriv tal 2:  " Tal2
    if [ "$Tal1" -eq "$Tal2" ]; then
	echo "$Tal1 är lika med $Tal2"
    else
	echo "$Tal1 är inte lika med $Tal2"
    fi

    if [ "$Tal1" -lt "$Tal2" ]; then
	echo "$Tal1 är mindre än $Tal2"
    elif [ "$Tal1" -gt "$Tal2" ]; then
	echo "$Tal1 är större än $Tal2"
    fi
exit 0
