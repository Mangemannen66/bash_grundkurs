#!/bin/bash

STR1="sommar"
STR2="vår"
    if [ "$STR1" \< "$STR2" ]; then
	echo "$STR1 är mindre än $STR2"
    elif [ "$STR1" \> "$STR2" ]; then
	echo "$STR11 är större än $STR2"
    fi
