#!/bin/sh
# Lab3

if [ $# -ne 5 ]; then
    echo "Usage: $0 group1 group2 user1 user2 user3"
    exit 1
fi

group1=$1
group2=$2
user1=$3
user2=$4
user3=$5

groupadd "$group1"
groupadd "$group2"

adduser "$user1" --ingroup "$group1"
adduser "$user2"
adduser "$user3"
usermod -aG "$group1" "$user2" # -a = append, -G = groups
usermod -aG "$group2" "$user2"
usermod -aG "$group2" "$user3"

mkdir -p /srv/dir1 /srv/dir2
chgrp "$group1" /srv/dir1
chmod 2775 /srv/dir1
chgrp "$group2" /srv/dir2
chmod 2775 /srv/dir2

echo "Directories and access rights have been created."
