#!/bin/bash
dir="$1"
if  [ -d $dir  ]; then
	echo -e "Chek in $dir \n"
else
	echo -e "$dir directory does not exist, exiting."
	exit 101 
fi
