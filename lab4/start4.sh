#!/bin/sh
# Lab4

for i in 'seq 1 3'; do ping ya.ru >/dev/null & done
for i in 1 2; do ping yandex.ru >/dev/null & done

