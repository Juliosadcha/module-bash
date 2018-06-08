#!/bin/bash
if [[ $# -eq 0 || !( -z $2 )]]
then
	echo "Too many(few) arguments"
	exit 1
fi
if [ ! -f $@ ]
then
	echo "Error.."
	exit 1
fi

grep -o "0" $1 | wc -l | sed 's/$/ zeroes, /' | tr -d '\r\n'
grep -o "1" $1 | wc -l | sed 's/$/ ones, /' | tr -d '\r\n'
grep -o "2" $1 | wc -l | sed 's/$/ twoes, /' | tr -d '\r\n'
grep -o "3" $1 | wc -l | sed 's/$/ threes, /' | tr -d '\r\n'
grep -o "4" $1 | wc -l | sed 's/$/ fours, /' | tr -d '\r\n'
grep -o "5" $1 | wc -l | sed 's/$/ fives, /' | tr -d '\r\n'
grep -o "6" $1 | wc -l | sed 's/$/ sixs, /' | tr -d '\r\n'
grep -o "7" $1 | wc -l | sed 's/$/ sevens, /' | tr -d '\r\n'
grep -o "8" $1 | wc -l | sed 's/$/ eights, /' | tr -d '\r\n'
grep -o "9" $1 | wc -l | sed 's/$/ nines/'



