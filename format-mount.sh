#!/bin/zsh

loadkeys ru
setfont cyr-sun16
timedatectl set-ntp true

mkfs.fat -F32 /dev/sda1
mkfs.ext4  /dev/sda2
#mkfs.ext4  /dev/sda3


mount /dev/mapper/container /mnt
#mount /dev/sda2 /mnt
#mkdir /mnt/home
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi
#mount /dev/sda3 /mnt/home

lsblk
