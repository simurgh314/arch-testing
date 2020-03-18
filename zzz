
rm -rf /etc/pacman.d/mirrorlist
wget https://raw.githubusercontent.com/simurgh314/arch-testing/master/mirrorlist
mv -f ~/mirrorlist /etc/pacman.d/mirrorlist
pacstrap /mnt linux-firmware base base-devel linux linux-headers nano dhcpcd netctl dialog wpa_supplicant zsh grub efibootmgr

genfstab -pU /mnt >> /mnt/etc/fstab

arch-chroot /mnt sh -c "$(curl -fsSL https://raw.githubusercontent.com/simurgh314/arch-testing/master/script2.sh)"
