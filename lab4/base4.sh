#!/bin/sh
# Lab4

for p in $(pgrep -f "ping ya.ru")
do
kill $p
done

