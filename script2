#2

#!/bin/bash
read -p "Имя компьютера (planet_express) --> : " hostname
read -p "Имя твое (homer) -->: " username

echo 'Прописываем имя компьютера'
echo $hostname > /etc/hostname
ln -svf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

echo '3.4 Локаль'
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
echo "ru_RU.UTF-8 UTF-8" >> /etc/locale.gen 

echo 'Обновим...'
locale-gen

echo 'Указываем язык системы'
echo 'LANG="ru_RU.UTF-8"' > /etc/locale.conf

echo 'KEYMAP=ru' >> /etc/vconsole.conf
echo 'FONT=cyr-sun16' >> /etc/vconsole.conf





echo 'С Богом!!!'



mkinitcpio -p linux

echo 'Поставь пока чаю.....'

pacman -Syy
pacman -S grub efibootmgr --noconfirm 
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

pacman -S netctl dialog wpa_supplicant --noconfirm 

useradd -m -g users -G wheel,audio,lp,optical,power,scanner,storage,video -s /bin/zsh $username

echo 'ВВЕДИ ПАРОЛЬ АДМИНА, бро'
passwd







echo 'Теперь введи СВОЙ пароль (можно такой же)'
passwd $username

echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers

echo '[multilib]' >> /etc/pacman.conf
echo 'Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf


pacman -Syy
pacman -S xorg-server xorg-xinit xorg-apps mesa-libgl xterm


echo 'Ставим иксы и драйвера'
pacman -S $gui_install

echo "Ставим оболочку"
pacman -S xfce4 xfce4-goodies --noconfirm

pacman -S lxdm --noconfirm
systemctl enable lxdm

echo 'Ставим шрифты'
pacman -S ttf-liberation ttf-dejavu --noconfirm 

echo 'Ставим сеть'
pacman -S networkmanager network-manager-applet ppp --noconfirm

systemctl enable NetworkManager

echo 'ВЫТАЩИ ФЛЕШКУ И ПРЕЗАГРУЗИ КОМП. (ПЕРЕКРЕСТИСЬ)'


exit
