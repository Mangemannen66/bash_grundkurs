#!/bin/bash


################################################
# Uppgift 5 laboration 6                       #
# Magnus Danielsson LX13                       #
# Ett skript för att kolla diskutrymmet på     #
# tillgängliga diska och varna om disk-        #
# användningen överstiger 80%. För att se ngn  #
# varning är det satt att varna vid låg disk-  #
# använding så som det är nu.                  #
# 				               #
################################################



declare -a Disk=(`df | awk '{ print $1 }' | sed -n '2,$p' `)
declare -a Use=(`df | awk '{ print $5 }' | sed -n '2,$p' | sed 's/%/ /g' `)


for Diskuse in ${!Use[@]}; do
	if [ ${Use[$Diskuse]} -gt 9 ];then
	    echo "Running out of space on ${Disk[Diskuse]} :  ${Use[Diskuse]}% $(date +"%Y-%m-%d-%H.%M.%S")"
	    #       mail -s "You are almost out of diskspace ${Use[Diskuse]}% : $(date +"%Y-%m-%d-%H.%M.%S")" root
	fi 
done
exit 0
