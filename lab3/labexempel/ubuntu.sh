#!/bin/bash

STR=""
if [ -z "$STR" ]; then
    echo "Strängen är tom."
elif [ -n "$STR" ]; then
    echo "Strängen är inte tom. "
fi
