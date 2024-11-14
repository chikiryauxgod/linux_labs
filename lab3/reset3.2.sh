#!/bin/sh
# Lab3

if [ $# -ne 5 ]; then
    echo "Using: $0 group1 group2 user1 user2 user3"
    exit 1
fi

group1=$1
group2=$2
user1=$3
user2=$4
user3=$5

rm -rf /srv/dir1 /srv/dir2
userdel -r "$user1"
userdel -r "$user2"
userdel -r "$user3"
groupdel "$group1"
groupdel "$group2"

echo "Groups, users and directories have been deleted."
