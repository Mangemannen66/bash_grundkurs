#!/bin/bash

DIALOG=${DIALOG=dialog}

dialog --backtitle "Användaruppgifter" --clear \
	--inputbox "Ditt namn? " 10 60  \
	--inputbox "Din adress? " 10 60 \
	--inputbox "Ditt telefonnummer" 10 60 2> tmpfile
Info=`cat tmpfile`
dialog --msgbox "$Info" 10 60 \

exit 0
