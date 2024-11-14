#!/bin/sh
# Lab4

for p in 'pgrep -f ya.ru'
do
kill $p
done

