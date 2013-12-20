#!/bin/bash

TAL1=20
TAL2=20
    if [ "$TAL1" -eq "$TAL2" ]; then
	echo "$TAL1 är lika med $TAL2"
    elif [ "$TAL1" -ne "$TAL2" ]; then
	echo "$TAL1 är inte lika med $TAL2"
fi
