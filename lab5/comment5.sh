#!/bin/bash
#! Lab5

for file in ~/temp_labs/*.sh;
	do # sed = Stream EDitor 
    	if [ -f "$file" ]; # -f == file?
		then #2i = insert before the 2nd string
		sed -i '2i # Author: Semenov Lev' "$file" # -i  = in file
    	fi
done
