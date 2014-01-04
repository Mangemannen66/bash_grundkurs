#!/bin/bash

####################################################
# Ett skript där användaren får mata in person-    #
# uppgifer såsom Namn, adress och telefonnummer    #
# Informationen sparas i en fil rad för rad med    #
# detaljerad info gällande vilken typ av data det  #
# är och själva datainformationen                  #
####################################################
#
# Inforation ges till användaren gällande programmet och vad som ska utföras.
#
echo
echo Hej!
echo
echo Dagens datum är `date +%y-%m-%d`
echo
echo Vi behöver ha lite person uppgifter ifrån dig.
echo Följ instruktionerna som följer.
echo
#
# Användarens namn begärs
#
read -p "Skriv in ditt fullständiga namn: " name
echo Namn: $name > personuppgifter.txt
#
#Användarens adress begärs
#
read -p "Skriv in din adress: " address
echo Adress: $address >> personuppgifter.txt
#
#Användarens telefonnummer begärs
#
read -p "Skriv in ditt telefonnummer: " phone
echo Telefonnummer: $phone >> personuppgifter.txt
#
# Slutligen - ett meddelande om att informationen har sparats i filen personuppgifter.txt
#
echo $'\a'
echo Tack så mycket! Informationen har sparats i filen \"personuppgifter.txt\"
