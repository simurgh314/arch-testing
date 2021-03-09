#!/bin/bash
echo 'GRUB_ENABLE_CRYPTODISK=y' >> /etc/default/grub

#blkid -s UUID /dev/sda2 | grep -oP '(?<=UUID=").+?(?=")' 
#echo 'GRUB_CMDLINE_LINUX="cryptdevice=UUID=$CRYPTOID:cryptx"'
#mkinitcpio -p linux
#pacman -Syy
#pacman -S grub efibootmgr --noconfirm 
#grub-install /dev/vda
#grub-mkconfig -o /boot/grub/grub.cfg
#pacman -S netctl dialog wpa_supplicant --noconfirm 

CRYPTOID=$(blkid -s UUID /dev/sda2 | grep -oP '(?<=UUID=").+?(?=")')
sed -i "s/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="$CRYPTOID:container/g" >> /etc/default/grub

