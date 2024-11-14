#!/bin/sh
# Lab2

truncate -s 2M /tmp/my_sys_2M.img
mkfs.ext2 /tmp/my_sys_2M.img
mkdir -p /mnt/new_disk
mount /tmp/my_sys_2M.img /mnt/new_disk
df -H /mnt/new_disk

mkdir /mnt/new_disk/new_dir
i=1
while [ $? -eq 0 ]; do
    dd if=/dev/zero of=/mnt/new_disk/new_dir/file_$i bs=10K count=1
    if [ $? -ne 0 ]; then
        break
    fi
    i=$((i+1))
done

echo 'Filesystem is overloaded, generation of new files was stopped'
