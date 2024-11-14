#!/bin/sh
# Lab4
if [ "$#" -lt 1 ]; 
	then
	echo "Incorrect number of parameters, expected from 1 to 2"
	exit 1
fi

address1="$1"
address2="${2:-google.com}"

for p in $(pgrep -f "$address1"); 
	do
	kill "$p"
done

for p in $(pgrep -f "$address2"); 
	do
	kill "$p"
done


