#!/bin/sh
# Задание 3.1
groupadd group1
groupadd group2
adduser user1
adduser user2
adduser user3
gpasswd -a user1 group1
gpasswd -a user2 group1
gpasswd -a user2 group2
gpasswd -a user3 group2
for i in $(seq 1 3)
do # инфо о пользователях и группах
echo "пользователь user$i"
id user$i
done
mkdir /srv/dir1 /srv/dir2
chgrp group1 /srv/dir1
chgrp group2 /srv/dir2
chmod 2775  /srv/dir1 /srv/dir2  # права на запись в каталоги
ls -la /srv

