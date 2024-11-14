#!/bin/sh
# Lab2

cd /mnt/new_disk && rm -rf *
cd /mnt/
umount /mnt/new_disk
rm /tmp/my_sys_2M.img
rmdir /mnt/new_disk
echo 'Reset complete.'
