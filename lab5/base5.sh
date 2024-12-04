#!/bin/sh
# Lab5

mkdir -p ~/temp_labs

for dir in ~/study/linux_labs/lab*; do
    cp -r "$dir"/* ~/temp_labs/
done

for file in ~/temp_labs/*; do
    if [ -f "$file" ]; then #dirname - path to file, basename - only name
        mv "$file" "$(dirname "$file")/Semenov_Lev$(basename "$file")"
    fi
done
