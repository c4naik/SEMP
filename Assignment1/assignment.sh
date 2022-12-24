#!/bin/bash

echo "Enter the cost price"
read cp
echo "Enter the selling price"
read sp
count=$(expr $sp - $cp)
echo "$count"
if [ $count -gt 0 ]
 then
    echo "There is profit"
 else
    echo "There is loss"
fi
