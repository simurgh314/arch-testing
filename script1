#1


#!/bin/bash

loadkeys ru
setfont cyr-sun16

echo '2.3 Синхрон часов...'
timedatectl set-ntp true

echo '2.4 Запилим разделы под GPT'
(
 echo g;

 echo n;
 echo ;
 echo;
 echo +512M;
 echo y;
 echo t;
 echo 1;

 echo n;
 echo;
 echo;
 echo +30G;
 echo y;
 
  
 echo n;
 echo;
 echo;
 echo;
 echo y;
  
 echo w;
) | fdisk /dev/sda

echo 'ТВОЯ РАЗМЕТКА'
fdisk -l

echo '2.4.2 ФОРМАТИРОВАНИЕ.'

mkfs.fat -F32 /dev/sda1
mkfs.ext4  /dev/sda2
mkfs.ext4  /dev/sda3

echo '2.4.3 МОНТИРОВАНИЕ'
mount /dev/sda2 /mnt
mkdir /mnt/home
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi
mount /dev/sda3 /mnt/home

echo '3.1 Поднимаем Россиюшку....'
rm -rf /etc/pacman.d/mirrorlist
wget https://git.io/mirrorlist
mv -f ~/mirrorlist /etc/pacman.d/mirrorlist

echo '3.2 СТАВИМ ПАКЕТЫ :)'
pacstrap /mnt linux-firmware base base-devel linux linux-headers nano dhcpcd dialog wpa_supplicant zsh grub efibootmgr

echo '3.3 НАСТРОЙКА:'
genfstab -pU /mnt >> /mnt/etc/fstab

arch-chroot /mnt sh -c "$(curl -fsSL https://github.com/simurgh314/arch-testing.git/script2)"
