#!/bin/bash


################################################
# Uppgift 3 laboration 7                       #
# Magnus Danielsson LX13                       #
# Ett skript för att lägga till en användare   #
# med hjälp av Dialog.                         #
#					       #
################################################

DIALOG=${DIALOG=dialog}
Temp=`mktemp -t createuser.XXXX`
trap "rm -f $Temp" 0 1 2 5 15

	if [ $EUID -ne 0 ]; then
		echo "You have to be root to run this script"
		exit 1
	fi
#while true; do	
dialog --backtitle "Create new user" --inputbox "New User: " 10 60 2>$Temp
Username=`cat $Temp`
#        if [ -z "$(getent passwd $Username)" ]; then
#           dialog --msgbox "User allready exist" 10 60
#        exit 1
#        else

#	continue
dialog --insecure --passwordbox "New Password: " 10 60 2>$Temp
Password=`cat $Temp`
#Users=`cat /etc/passwd | awk -F: '{print $1}'`

useradd -m -U $Username -s /bin/bash
echo "${Username}:${Password}" | chpasswd
dialog --msgbox "You have succesfully created an account for user: $Username" 10 60
	
#	fi
#done
exit 0
