#!/bin/bash

timedatectl set-ntp true

(
 echo g;

 echo n;
 echo ;
 echo;
 echo +300M;
 echo Y;
 echo t;
 echo 1;

  
 echo n;
 echo;
 echo;
 echo;
 echo Y;
  
 echo w;
) | fdisk -t gpt /dev/vda


mkfs.fat -F32 /dev/vda1
mkfs.ext4  /dev/vda2


cryptsetup -yv luksFormat /dev/vda2
cryptsetup open /dev/papper container
