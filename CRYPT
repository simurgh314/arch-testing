#!/bin/bash

timedatectl set-ntp true

(
 echo g;

 echo n;
 echo ;
 echo;
 echo +300M;
 echo y;
 echo t;
 echo 1;

  
 echo n;
 echo;
 echo;
 echo;
 echo y;
  
 echo w;
) | fdisk /dev/sda


mkfs.fat -F32 /dev/sda1
mkfs.ext4  /dev/sda2


cryptsetup -yv luksFormat /dev/sda2
