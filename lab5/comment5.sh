#!/bin/bash
#! Lab5

for file in ~/temp_labs/*.sh; do
    	if [ -f "$file" ];
		then #sed - i без временного файла, 2i - вторая строка
		sed -i '2i # Author: Semenov Lev' "$file"
    	fi
done
