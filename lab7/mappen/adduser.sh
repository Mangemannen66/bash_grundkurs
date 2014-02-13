#!/bin/bash


if [ $EUID -eq 0 ]; then
   dialog --inputbox --force-badname "Name of new user" 10 60 2>/tmp/new
Name=`cat /tmp/new`
   dialog --passwordbox "Password for new user" 10 60 2>/tmp/pass
Pass=`cat /tmp/pass`
clear
    `adduser $Name`
     echo $Name:$Pass | chpasswd
else
    echo "You have to be root"
fi
