#!/bin/bash

dialog --title "packar upp filer" --infobox "Packar upp maps.gz till /tmp" 10 60
tar zxf maps.gz
dialog --title "Packar upp filer" --infobox "Packar upp scenes.tar.gz" 10 60
tar zxf scenes.tar.gz
dialog --title "Klar" --msgbox "Uppackningen är klar, starta programmet genom att skriva ./game" 10 60
exit 0

