#!/bin/bash

data=$(tempfile 2>/dev/null)

trap "rm -f $data" 0 1 2 5 15

dialog --title "Password" \
--clear \
--insecure \
--passwordbox "Enter your password" 10 30 2> $data

ret=$?

case $ret in
    0)
	echo "Password is $(cat $data)";;
    1)
	echo "Cancel pressed. ";;
    255)
	[ -s $data ] &&  cat $data || echo "ESC pressed";;
esac 

