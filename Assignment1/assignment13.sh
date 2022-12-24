#!/bin/sh

echo "Enter the string : "
read str

echo $str > temp
rstr="$(rev temp)"

if [ $str = $rstr ]
then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi
