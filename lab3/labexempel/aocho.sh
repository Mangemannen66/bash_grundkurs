#!/bin/bash

    if [ ! -e ./datafil.dat -o ! -w ./datafil.dat ]; then
	echo "Filen datafil.dat finns inte, eller går inte att skriva till."
	exit 1
    fi
