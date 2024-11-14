#!/bin/sh
# Lab3

su -l user2 -c '
cd /srv/dir1
touch file_u2d1
echo "$(whoami) made file in dir $(pwd)"
cd /srv/dir2
touch file_u2d2
echo "$(whoami) made file in dir $(pwd)"
'

su -l user1 -c '
cd /srv/dir1
echo "$(whoami) made file in dir $(pwd)"
cp file_u2d1 file_u1d1
echo "Result of copying file in dir1: $?"
cd /srv/dir2
echo "$(whoami) made file in dir $(pwd)"
cp file_u2d2 file_u1d2
echo "Result of copying file in dir2: $?"
'

su -l user3 -c '
cd /srv/dir2
touch file_u3d2
echo "$(whoami) made file in dir $(pwd)"
cd /srv/dir1
'
