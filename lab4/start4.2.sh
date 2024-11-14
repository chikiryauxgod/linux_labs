#!/bin/sh
# Lab4.2

if [ "$#" -ne 2 ]; 
	then
	echo "Incorrect number of parameters, expected 2"
	exit 1
fi

for i in $(seq 1 3); do
	ping "$1" > /dev/null &
done

for i in 1 2; do
	ping "$2" > /dev/null &
done

