#!/bin/bash

filename='qu11_txtfile.txt'
n=1
while read line; 
do
	# reading each line
	echo "Line No. $n : $line"
	n=$((n+1))
done < $filename