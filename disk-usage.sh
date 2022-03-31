#!/bin/bash
dir="$1"
if  [ -d $dir  ]; then
	echo -e "Chek in $dir \n"
else
	echo -e "$dir directory does not exist, exiting."
	exit 101 
fi
echo -e "the heaviest subdir of $dir is:"
top1=$(du -S $dir 2>/dev/null | sort -rn | head -n 1 | awk '{print $2 "\n"}')
disk=$(du -Sh -d 0  $top1 2>/dev/null | sort -rn | head -n 1 | awk '{print  $1}')
echo -e "$top1 with disk usage is $disk"

