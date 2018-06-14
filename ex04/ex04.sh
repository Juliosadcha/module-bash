#!/bin/bash
file=$(basename "$2")
if [ -z $1 ] || [ -z $2 ]
then 
  exit 1
fi
  echo "$file" && grep -n "$1" $2 | cut -d : -f 1

