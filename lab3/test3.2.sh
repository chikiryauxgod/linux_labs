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

su -l "$user2" -c '
    cd /srv/dir1
    touch file_u2d1
    whoami && echo "created file in $(pwd)"

    cd /srv/dir2
    touch file_u2d2
    whoami && echo "created file in $(pwd)"
'

su -l "$user1" -c '
    cd /srv/dir1
    whoami && echo "access to file in $(pwd)"
    cp file_u2d1 file_u1d1
    echo "Result of copying in dir1: $?"

    cd /srv/dir2
    whoami && echo "try to create a file in $(pwd)"
    cp file_u2d2 file_u1d2
    echo "Result of copying file in dir2: $?"
'

su -l "$user3" -c '
    cd /srv/dir2
    touch file_u3d2
    whoami && echo "created file in $(pwd)"

    cd /srv/dir1
    whoami && echo "tries to create a file in $(pwd)"
    touch file_u3d1 || echo "Access to create file in dir1 is denied"
'
