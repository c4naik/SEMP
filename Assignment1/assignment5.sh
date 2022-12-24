#!/bin/bash
echo "Enter your marks"
read marks
if [ $marks -gt 80 ]
then
echo "You have secured 1st Division"
elif [ $marks -gt 60 ]
then
echo "You have secured 2nd Division"
elif [ $marks -gt 40 ]
then 
echo "You have secured 3rd Division"
else
echo "You have failed"
fi
