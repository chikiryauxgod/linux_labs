#!/bin/sh
# Lab2

cd /mnt/new_disk/ || { echo 'Failed to change directory'; exit 1; }
rm -rf * || { echo 'Failed to remove files'; exit 1; }
cd /mnt/
umount /mnt/new_disk || { echo 'Failed to unmount filesystem'; exit 1; }
rm /tmp/my_sys_2M.img || { echo 'Failed to remove image file'; exit 1; }
rmdir /mnt/new_disk || { echo 'Failed to remove mount directory.'; exit 1; }
echo 'Reset complete.'
