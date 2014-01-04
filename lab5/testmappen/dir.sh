#!/bin/bash

read -p "Please enter the name of a directory: " dir

while [ ! -d "$dir" ]
do
	echo "$dir is not a directory"
	echo "Please try again: "
	read dir
done

echo Congratulations: $dir is a directory!
