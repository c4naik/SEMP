#!/bin/bash
number=1
rows=5
for((i=1; i<=rows; i++))
do
  l=$(($rows - $i))
  for((k=1; k<=l; k++))
  do
    echo -n " "
  done
  for((j=1; j<=i; j++))
  do
    echo -n "$number "
    
  done
  number=$((number + 1))
  echo
done
