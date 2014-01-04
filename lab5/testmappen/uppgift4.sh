#!/bin/bash

################################################
# Uppgift 4 laboration 3		       #
# Magnus Danielsson LX13		       #
# Ett enkelt skript för att bestämma filtyp och#
# även om filen verkligen existerar............#
################################################

#Ger varabeln Filetype värdet av 
#$1 som är det värdet som anges efter skriptnamn
# D V S filen, katalogen eller blockfilen.
#
Filetype=$1 
# i början av if-sats bestäms om $1 existerar.
if [ ! -e $Filetype ]; then
	echo "$Filetype does not exist"
	exit 1
fi
# Här görs en koll gällande filtyp m h a if-sats
if [ -d $Filetype ];then
        echo "$Filetype - is a directory"
    elif [ -f $Filetype ];then
        echo "$Filetype - is a regular file"
    elif [ -b $Filetype ];then
        echo "$Filetype - is a block device"
    elif [ -h $Filetype ];then
        echo "$Filetype - is a link"
fi
exit 0 #skript avslutas
