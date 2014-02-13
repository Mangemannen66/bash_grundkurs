#! /bin/bash

################################################
# Uppgift 2 laboration 6                       #
# Magnus Danielsson LX13                       #
# Ett skript för att tömma en mapp, och i det  #
# +fallet 'mappen' som ligger under tmp-mappen #
################################################

if [ $EUID -ne 0 ]; then
   echo "Du måste köra det här skriptet som root "
   exit 1
else
   rm -rf /tmp/mappen/*
   echo "filerna raderades utan problem"
   exit 0
fi
