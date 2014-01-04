#!/bin/bash
#
############################################################
# A project-script that eventually is going to be a simple #
# contact database.					   #
############################################################

#    Define a name for the databasefile
#
fname=names.dat
#
#    If the file does not exist, create it
#
[ ! -f $fname ] && > $fname

#
#    Loop - until Exit
#
while true
do
#    Display the menu
#
clear
printf "\t\t SHELL PROGRAMMING DATABASE \n"
printf "\t\t\t MAIN MENU \n"
printf " What  to do? \n"
printf "\t1.  Create records \n"
printf "\t2.  View Records \n"
printf "\t3.  Search for records \n"
printf "\t4.  Delete records that match a pattern \n"
echo

#
#    Promt for an answer
#
read -p " Answer (or 'q' to quit)? " answer junk

#
#    Empty answers (pressing ENTER) cause the meny to redisplay,
#    back in the loop
#    We get to continue if testprogram returns 0 (true)
#
[ "$answer" = "" ] && continue

#
#    Decide what to do
#
case "$answer" in
    1)
	#

	#    program asks for information to be filled in
	#
	echo " Please follow instruktions and fill in the info asked for"
	read -p " First name: " Firstname
	read -p " Surname: " Surname
	read -p " Address: " Address
	read -p " City: " City
	read -p " State: " State
	read -p " Zipcode: " Zip
	#
	#All the info is appended to the databasefile
	#
	echo $Firstname:$Surname:$Address:$City:$State:$Zip >> $fname
	;;
    2)
    	#
	#    Show current contacts in database
	#
	(
	echo
	echo " Here are the current contacts in the database: "
	echo
#	cat $fname
	echo "First Name      Surname         Address            City          State       Zip"
	echo "======================================================================================="
	sort -t : -k2 $fname | awk -F : '{printf("%-16.16s%-16.16s%-22.22s%-15.15s%-13.13s%-7.7s\n", $1, $2, $3, $4, $5, $6)}'
	) | more
	#
	#A printout of the existing number of contacts in the database
	#
	echo
	echo There are `cat $fname | wc -l` contacts in the database
	;;
    3)
	echo The Search case is not implemented yet
	;;
    4)
	echo The Delete case is not implemented yet
	;;
    q*|Q*)
exit 0
	;;
    *)
	echo "Please enter a valid number between 1 and 4"
	;;
    esac
    #
    #   Pause to give the user a chance to see what's on the screen
    #
    read -p "Hit <ENTER> to continue: " junk
done

