#!/bin/bash

LIMIT=12 # Upper limit
SLEEP=5 # Sleep time in seconds
a=1

while (("$a" <= "$LIMIT")) 
do
	#echo $a;
	/home/pi/cosm/load/log.sh;
	/home/pi/cosm/temperature/log.sh;

	a=$(($a+1))

	if  (("$a" > "$LIMIT")) 
	then
		exit 0;
	fi
sleep $SLEEP;
done 
exit #exit
########################################################
