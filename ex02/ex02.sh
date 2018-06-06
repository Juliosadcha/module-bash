#!/bin/bash

task=$(echo $1 | tr " " "\n")
for i in $task 
do
  ls -R | grep -Fi $i || echo "the searched PATH is unexisting"
done






