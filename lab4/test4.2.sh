#!/bin/sh
# Lab4.2

if [ "$#" -ne 2 ]; 
	then
	echo "Incorrect number of parameters, expected 2"
	exit 1
fi

echo "ping to $1"
pgrep -f "ping $1" | wc -l

echo "ping to $2"
pgrep -f "ping $2" | wc -l
