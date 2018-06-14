#!/bin/bash
flag="$1"
shift
test='^-?[0-9]+([.][0-9]+)?$'
for i in $@
do
  if ! [[ $i =~ $test ]]
  then
    echo "Error.."
    exit 1
  fi
done
s=0
case $flag in
  "-s")
  for i in $@
  do
    s+="+"$i
    shift
  done
  echo "$s" | bc
  ;;
  "-e")
  for i in $@
  do
    if [ $(($i%2)) -eq 0 ]
    then
      s+="+"$i
    fi
    shift
  done
  echo "$s" | bc
  ;;
  "-o")
  for i in $@
  do
    if [  $(($i%2)) -eq 1 ]
    then
      s+="+"$i
    fi
    shift
  done
  echo "$s" | bc
  ;;
"-m")
  count=0
  for i in $@
  do
    count=$(( $count + 1 ))
    s+="+"$i
    shift
  done
  echo "($s)/$count" | bc
  ;;
*)
  echo "Error.."
  exit 1
  ;;
esac

