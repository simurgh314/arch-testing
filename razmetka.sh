(
0
echo g;
echo n;
echo ;
echo ;
echo +256M; #EFI
echo t;
echo 1;


echo n;
echo ;
echo ;
echo +256M; #boot
 
 
echo n;
echo ;
echo ;
echo +4G; #SWAP
  
  
echo n;
echo ;
echo ;
echo ; #ROOT

) | fdisk -t gpt /dev/vda








cryptsetup -yv luksFormat /dev/vda2

echo '

    VVEDI TEPER ETOT PAROL chtobi otkrit container
    ';

cryptsetup open /dev/vda2 container


lsblk


mkfs.ext4 /dev/mapper/container
echo y;














