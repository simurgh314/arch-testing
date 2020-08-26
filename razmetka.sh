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


cryptsetup -yv luksFormat /dev/vda2
echo YES;
