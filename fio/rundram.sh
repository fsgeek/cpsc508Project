#!/bin/sh
sudo mkdir -p /mnt/ramdisk
sudo mount -t tmpfs -o size=20G tmpfs /mnt/ramdisk
fio ram_randrw1G_ramdisk.fio
sudo umount /mnt/ramdisk
