#!/bin/bash


Arg1="$1"

echo "Hej ${USER}@${HOSTNAME}"
echo ""
echo "Variabler på U: ${!U*}"
echo "Variabler på S: ${!S*}"
echo ""


echo ${Arg1:?"No arg1 input"}

echo "Du skrev in ${Arg1} $0"

exit 0
