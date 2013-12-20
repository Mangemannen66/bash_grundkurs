#!/bin/bash

if [ ! -e ./hemliginfo.dat ]; then
	echo "ERROR: Filen hemliginfo.dat finns inte. Avbryter. "
	exit 1
fi
