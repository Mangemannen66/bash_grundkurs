#!/bin/bash

echo Enter file name
	read fname

	 exec<$fname
	 value=0
	 while read line
	 do
		value='expr $value + 1';
	 done
	 echo "****$value";
