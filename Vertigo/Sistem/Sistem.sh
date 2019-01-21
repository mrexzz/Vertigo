#! /bin/bash 
clear
echo "---------------Sistem-------------"
yellow="\033[1;33m"
echo -e $yellow"1)Netstat Sorgusu
2)Depo Güncelle
3)Ses Kartını Düzelt
4)Gpg hatasını Çöz
5)ArkaPlanı Yönet
6)Geri"

echo -n "
Bir işlem seçiniz: "
read islem4
case $islem4 in 
	1)netstat -a
		sleep 25
		 cd -
		 ./Çalıştır.sh;;
	2)xterm -e  "apt-get update && apt-get upgrade;$SHELL"
		 cd -
		 ./Çalıştır.sh;;
	3)pulseaudio -D
	   clear
	   echo "Tamamlandı"
		sleep 2 
		 cd -
		 ./Çalıştır.sh;;
	4)wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add
		sleep 2 
		 cd -
		 ./Çalıştır.sh;;
	5)ps -a 
	  echo -n "
Kapatmak istediğiniz işlem:"
	  read kapat2
	  killall $kapat2;;
	6)cd -
		 ./Çalıştır.sh;;
	*)echo "Yanlış Bir değer girdiniz..." 
		exit;;




esac  
