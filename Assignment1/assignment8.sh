#!/bin/bash
echo "Enter your marks"
read marks
case $marks in
	8[0-9]|9[0-9]|100)echo "You have secured 1st Division"
	;;
	6[0-9]|7[0-9])echo "You have secured 2nd Division"
	;;
	4[0-9]|5[0-9])echo "You have secured 3rd Division"
	;;
	[0-9]|[1[0-9]|2[0-9]|3[0-9])echo "You have failed"
	;;
	*)echo "Incorrect Entry"
	;;
esac
