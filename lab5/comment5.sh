#!/bin/bash
#! Lab5

<<<<<<< HEAD
for file in ~/temp_labs/*.sh; do
    	if [ -f "$file" ];
		then #sed - i без временного файла, 2i - вторая строка
		sed -i '2i # Author: Semenov Lev' "$file"
=======
for file in ~/temp_labs/*.sh;
	do # sed = Stream EDitor 
    	if [ -f "$file" ]; # -f == file?
		then #2i = insert before the 2nd string
		sed -i '2i # Author: Semenov Lev' "$file" # -i  = in file
>>>>>>> refs/remotes/origin/main
    	fi
done
