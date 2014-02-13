#!/bin/bash


################################################
# Uppgift 3 laboration 6                       #
# Magnus Danielsson LX13                       #
# Ett skript för att hjälpa användaren att     #
# skapa en dhcpd.conf-fil med hjälp av dialog. #
#					       #
################################################

DIALOG=${DIALOG=dialog}
tempfile=`tempfile 2>/dev/null` || tempfile=/tmp/test$$

trap "rm -f $tempfile" 0 1 2 5 15
File="$HOME/dhcpd.conf"

sanityCheck() {
	if [ $? -ne 0 ];then
   	echo "Quitting..."
        	exit 1
	fi

	}
dialog --backtitle "DHCP-Config" \

dialog --inputbox  "Subnet? (x.x.x.x) : " 10 60 2>$tempfile
sanityCheck
Subnet=`cat $tempfile`

dialog --inputbox  "Netmask? (x.x.x.x) : " 10 60 2>$tempfile
sanityCheck
Netmask=`cat $tempfile`
dialog --inputbox  "StartRange? (x.x.x.x) : " 10 60 2>$tempfile
sanityCheck
StartRange=`cat $tempfile`
dialog --inputbox  "EndRange? (x.x.x.x) : " 10 60 2>$tempfile
sanityCheck
EndRange=`cat $tempfile`
dialog --inputbox  "NameServers? (x.x.x.x)<space>(x.x.x.x) : " 10 60 2>$tempfile
sanityCheck
NameServers=`cat $tempfile`
dialog --inputbox  "DomainName? (domainame.xx) : " 10 60 2>$tempfile
sanityCheck
DomainName=`cat $tempfile`
dialog --inputbox  "Router? (x.x.x.x) : " 10 60 2>$tempfile
sanityCheck
Router=`cat $tempfile`
dialog --inputbox  "BroadcastAddress? (x.x.x.x) : " 10 60 2>$tempfile
sanityCheck
BroadcastAddress=`cat $tempfile`

printf "subnet $Subnet netmask ${Netmask} {\n" > $File
printf "range $StartRange ${EndRange};\n" >> $File
printf "option domain-name-servers ${NameServers};\n" >> $File
printf "option domain-name \"${DomainName}\";\n" >> $File
printf "option routers ${Router};\n" >> $File
printf "option broadcast-address ${BroadcastAddress};\n" >> $File
printf "ddns-update-style none;\n" >> $File
printf "default-lease-time 600;\n" >> $File
printf "max-lease-time 7200;\n" >> $File
printf "}\n" >> $File

dialog --infobox "DHCPD generated!" 10 60 
sleep 2
clear
exit 0
