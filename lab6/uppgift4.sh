#!/bin/bash


################################################
# Uppgift 4 laboration 6                       #
# Magnus Danielsson LX13                       #
# Ett skript för att räkna med de fyra räkne-  #
#setten utifrån 2 tal som användaren matar in  #
#    					       #
################################################


Sum(){
    printf "____________________ \n"
       add=$[ $nr1+$nr2 ]
       printf "$nr1 + $nr2 = $add \n"
    printf "____________________ \n"
       sub=$[ $nr1-$nr2 ]
       printf "$nr1 - $nr2 = $sub \n"
    printf "____________________ \n"
       quot=$[ $nr1/$nr2 ]
       printf "$nr1 / $nr2 = $quot \n"
    printf "____________________ \n"
       prod=$[ $nr1*$nr2 ]
       printf "$nr1 * $nr2 = $prod \n"
    printf "____________________ \n\n"
    }

Eval(){
   read -p "Skriv in tal 1 : " nr1
   read -p "Skriv in tal 2 : " nr2

   if ! expr $nr1 + 0  2> /dev/null ; then
	printf "Du måste skriva in ett heltal \n"
	Eval
   elif ! expr $nr2 + 0 2> /dev/null ; then
        printf "Du måste skriva in ett heltal \n"
	Eval
   else
	Sum
   fi
	}
Eval

exit 0
