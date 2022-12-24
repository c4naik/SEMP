#!/bin/bash
echo "Enter a number"
read a
if [ `expr $a % 2` -eq 0 ]
then
echo "This is an even number"
else
echo "This is an odd number"
fi
