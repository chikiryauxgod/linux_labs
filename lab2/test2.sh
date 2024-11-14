#!/bin/sh
# Lab2

df -i /mnt/new_disk
cd /mnt/new_disk/new_dir
echo 'number of files created: '
ls -l | wc -l
