#!/bin/bash

    if [ "$BETYG" -ge 80 ]; then
	echo "VG"
    elif [ "$BETYG" -ge 50 ]; then
	echo "G"
    else 
	echo "IG"
   fi
