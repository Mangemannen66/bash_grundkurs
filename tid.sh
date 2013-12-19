#!/bin/bash
USERNAME="Dickhead"
read -t 6 -p "Hej, vad heter du?" USERNAME
USERNAME=${USERNAME:="Dickhead"}
echo -e "\nHej $USERNAME"
exit 0
