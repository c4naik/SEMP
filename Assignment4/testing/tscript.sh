#!/bin/bash


TAB=$(printf "\t")
while IFS=$TAB read m1 m2 m3 m4 m5 m6 m7 m8 m9 m10
do 
	#echo "$m1, $m2, $m3"
	exec >> opfile.txt

	gcc odd.c -o odd222 && ( echo "$m1" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m2" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m3" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m4" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m5" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m6" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m7" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m8" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m9" ) | ./odd222
	
	gcc odd.c -o odd222 && ( echo "$m10" ) | ./odd222
done < infile.txt

exec >/dev/tty
echo "----------------------"
echo "PROGRAM TESTING REPORT"
echo "----------------------"
echo " "
echo "Program File Check :"
if [ -e odd.c ]
then
    echo "[PASS]"
else
    echo "[FAILURE]"
    echo "!!!!!!!!!!ABORTING!!!!!!!!!!"
    exit
fi
echo "Expected Output File Check :"
if [ -e eopfile.txt ]
then
    echo "[PASS]"
else
    echo "[FAILURE]"
    echo "!!!!!!!!!!ABORTING!!!!!!!!!!"
    exit
fi
echo "Program Input File Check :"
if [ -e infile.txt ]
then
    echo "[PASS]"
else
    echo "[FAILURE]"
    echo "!!!!!!!!!!ABORTING!!!!!!!!!!"
    exit
fi

echo " "
echo "Running All Test Cases... "
echo " "
echo "_____________________________________________"
echo " "
if cmp --silent -- opfile.txt eopfile.txt; then
  echo "Your Code has successfully passed all Testing !"
else
  echo "Failure Case :							Expected Output:"

  sdiff -l opfile.txt eopfile.txt | cat -n | grep -v -e '($'

fi


echo " "
echo " "
echo "//////////[Execution Completed]//////////////"
>opfile.txt


