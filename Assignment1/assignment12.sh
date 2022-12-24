#!/bin/bash

echo "Enter the year : "
read year

i=0

while [ $i -ne 10 ]
do

	if [ `expr $year % 400` -eq 0 ]
	then
		echo "Leap Year $year"
	        i=`expr $i + 1`
	elif [ `expr $year % 100` -eq 0 ]
	then
		echo "Not Leap Year $year"
	elif [ `expr $year % 4` -eq 0 ]
	then
		echo "Leap Year $year"
        	i=`expr $i + 1`
	else
		echo "Not Leap Year $year"
	fi
	year=`expr $year + 1`
done
