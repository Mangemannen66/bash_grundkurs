#!/bin/bash

################################################
# Uppgift 1 laboration 7                       #
# Magnus Danielsson LX13                       #
# Ett skript där du ska välja webbläsare       #
# +Om den finns installerad öppnas den         #
# +när du har valt den och tryckt enter.       #
################################################

DIALOG=${DIALOG=dialog} #Här sätt variabeln DIALOG till värdet 'dialog'
# Härunder görs försök att skapa en temprär fil med hjälp av tempfile utility.
# Om det inte fungerar skapas en tempfil manuellt.
# raden därefter kör en 'trap'-rutin där tempfilen raderas när skripet avslutas
# oavsätt om det blir p g a fel eller inte. Nummren står för vilka signaler
# som ska fångas upp.                
#############################################################################
tempfile=`tempfile 2>/dev/null` || tempfile=/tmp/test$$
trap "rm -f $tempfile" 0 1 2 5 15

$DIALOG --clear --title "Webbrowser" \
	--menu "Välj din webbläsare" 20 60 3 \
	1  "chromium-browser"  \
	2  "internet explorer" \
	3  "firefox" 2> $tempfile

choice=`cat $tempfile`
case $choice in
    1) 
	chromium-browser ;;
    2)
	internet explorer ;;
    3)
	firefox ;;
esac
    if [ $? -ne 0 >/dev/null ]; then
	dialog --title "Fel!" --msgbox "Webbläsaren är inte installerad!" 10 60 
    fi
exit
