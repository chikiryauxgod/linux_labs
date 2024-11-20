#!/bin/sh
# Lab4

if [ "$#" -lt 1 ]; then
    echo "Incorrect number of parameters, expected at least 1"
    exit 1
fi

address1="$1"

if [ "$#" -eq 2 ]; then
    address2="$2"
else
    address2=""
fi

for p in $(pgrep -f "ping $address1"); do
    echo "Killing process $p, linked to $address1"
    kill "$p"
done

if [ -n "$address2" ]; then
    for p in $(pgrep -f "ping $address2"); do
        echo "Killing process $p, linked to $address2"
        kill "$p"
    done
fi
