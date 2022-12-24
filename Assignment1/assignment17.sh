#1/bin/bash

echo "Enter File name:"
read fileName

echo "cat" >> "$fileName"
echo "dog" >> "$fileName"
echo "bear" >> "$fileName"
echo "hello" >> "$fileName"
echo "elephant" >> "$fileName"
echo "hello" >> "$fileName"
echo "tiger" >> "$fileName"
echo "hello" >> "$fileName"
echo "horse" >> "$fileName"

grep -F -v hello $fileName > $fileName.tmp && mv $fileName.tmp $fileName


cat "$fileName"

