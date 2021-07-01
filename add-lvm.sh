#!/bin/bash

echo "Display"
sudo ls -la /dev/mmcblk2*
sudo df -l
sudo fdisk -l

echo "Format"
#sudo fdisk /dev/mmcblk2
# delete: d
# partition: p
# new: n
# primary: p
# enter three times
# type: t
# 8e
# write: w
sudo fdisk -l

echo "Pv create"
sudo pvdisplay 
sudo pvcreate /dev/mmcblk2p1 
sudo pvdisplay 

echo "vg extend"
sudo vgdisplay 
sudo vgextend ubuntu-vg /dev/mmcblk2p1
sudo vgdisplay 

echo "lv extend"
sudo lvdisplay 
sudo lvextend -l+100%FREE /dev/ubuntu-vg/ubuntu-lv
sudo lvdisplay 
sudo resize2fs /dev/ubuntu-vg/ubuntu-lv 
sudo df -h

