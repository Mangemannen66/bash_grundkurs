#!/bin/bash

################################################
# Uppgift 5 laboration 5                       #
# Magnus Danielsson LX13                       #
# Ett skript för att skapa en komprimerad back-#
# +up-fil som dateras utifrån tidpunkten när   #
# +filen skapas. Mappen som ska komprimeras    #
# +är förutbestämd.                            #
################################################

#
# En variabel för datumstämpling av den koprimerade mappen
#
Currentd=$(date +"%Y-%m-%d-%H.%M.%S")
#
Dirpath=testmappen # Variabel för källmappen 
#
Backupath=$HOME/backup # Destinationsmappen
#
# Här testas  utifall om det finns ngn backupkatalog
# Om den inte finns, skapas den.
#
[ ! -d $Backupath ] && `mkdir -p  $Backupath`
#
# Till en början testas här om källkatalogen är läsbar.
# Är den inte det skrivs ett felmeddelande ut
# Annars om det finns en läsbar katalog så komprimeras den
# och flyttas till destinationsmappen/backuppmappen.
#
if [ ! -r "$Dirpath" ];then
echo  "Mappen är ej läsbar."
   elif [ -d "$Dirpath" ];then
	$(tar --recursion -czf  backupfile.tar.gz $Dirpath)
	mv backupfile.tar.gz $Backupath/backupfile_$Currentd.tar.gz
	echo "En Backup har gjorts av $Dirpath."
   else echo "Någonting gick fel."	#Felmeddelande
   fi
exit 0 #Skriptet avslutas.
