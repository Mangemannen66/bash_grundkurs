#!/bin/bash


################################################
# Case 7 laboration 9                          #
# Magnus Danielsson LX13                       #
# Ett skript för att kolla diskanvändning och  #
# nä det överstiger en viss procent ska mail   #
# skickas till sysadmin                        #
# 					       #
################################################



df -h | egrep -v '^Filesystem|tmpfs ' | awk '{ print $5 , $1 }' | sed -n '2,$p' |  while read Output; 
 
do
    echo $Output
        Use=(`echo $Output | awk '{ print $1  }' | sed 's/%/ /g'`)
        Part=(`echo $Output | awk '{ print $2 }'`)

    if [ $Use -ge 12 ]; then
	echo "Running out of space -> \"$Part is $Use% full\" : $(date +"%Y-%m-%d-%H.%M.%S")"
	#   	mail -s "You are almost out of diskspace $use%" root 
    fi
done
exit 0
