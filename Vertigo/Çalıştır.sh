#! /bin/bash
reset
cat logo.txt
Cyan="\033[0;36m"
echo -e $Cyan"1)Ağ
2)Web 
3)Cracker
4)Sistem
5)Çık"
echo -n "
Bir işlem seçiniz: "
read islem5 

if [ $islem5 == "1" ];
then 
cd Network 
chmod 700 Network.sh
./Network.sh

elif [ $islem5 == "2" ];
then
cd Web 
chmod 700 web.sh
./web.sh

elif [ $islem5 == "3" ];
then 
cd Cracker 
chmod 700 Cracker.sh
./Cracker.sh

elif [ $islem5 == "4" ];
then 
cd Sistem 
chmod 700 Sistem.sh
./Sistem.sh

elif [ $islem5 == "5" ];
then 
exit
else 
	echo "Yanlış bir değer giriniz..."
	clear 
	./Çalıştır.sh
fi
