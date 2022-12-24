#!/bin/bash
echo "Enter the radius"
read r
echo "The area is "
echo "3.14 * $r * $r" | bc
echo "The circumference is "
echo "3.14 * 2 * $r" | bc
