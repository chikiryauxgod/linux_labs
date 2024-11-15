#!/bin/bash
#! Lab5

for file in ~/temp_labs/*.sh; 
	do
    	if [ -f "$file" ]; 
		then
		sed -i '2i # Author: Semenov Lev' "$file"
    	fi
done
