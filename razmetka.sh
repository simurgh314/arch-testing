(
 echo g;

 echo n;
 echo ;
 echo;
 echo +512M;

 echo t;
 echo 1;

 #echo n;
 #echo;
 #echo;
 #echo +40G;
 ##echo y;
 
  
 echo n;
 echo;
 echo;
 echo;
 #echo y;
  
 echo w;
) | fdisk /dev/vda
echo;
echo;
echo;



echo '


=================================================================


	Vvedi   YES   i vvedi 2 raza parol ot diska...

=================================================================

';


cryptsetup -yv luksFormat /dev/vda2

echo '

    VVEDI TEPER ETOT PAROL chtobi otkrit container
    ';

cryptsetup open /dev/vda2 container


lsblk


mkfs.ext4 /dev/mapper/container
echo y;














