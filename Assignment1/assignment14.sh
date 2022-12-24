#!/bin/bash

echo "Enter the number : "
read no

fact=1
i=2

while [ $i -le $no ]
do
	fact=`expr $fact \* $i`

	i=`expr $i + 1`
done

echo "Factorial : $fact"
