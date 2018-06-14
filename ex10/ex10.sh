#!/bin/bash
for i in $@
do
	if [ ! -f $i ]
	then 
		exit 1
	fi
	awk 'END {print NR}' $i | tr -d '\r\n'
	echo " "$i
done
