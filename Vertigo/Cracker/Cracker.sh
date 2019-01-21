#! /bin/bash
clear
blue="\033[1;34m"
echo -e $blue"---------------Cracker-------------"
echo "1)Wordlist Oluştur
2)Şifre Kırıcı
3)AES256 İle Şifrele
4)Zip şifreleyici
5)Şifreleme Türü bul  
6)Geri" 
echo -n "
Bir işlem seçiniz: "
read islem3
case $islem3 in 
	1)clear
	   python3 wordlistoluştur.py
	     cd -
		./Çalıştır.sh;;
	2)python3 şifrekırıcı.py;;
	3)echo "Dosyayı programın dizinine atınız..."
		echo -n "Dosya adı:"
		read aes35
		gpg -c --cipher-algo AES256 $aes35
		echo "Tamamlandı"
		sleep 2 
		 cd -
		 ./Çalıştır.sh;;
	4)echo "Dosya adı ne olsun: "
		read yenidosya
	  echo "(dizinle beraber)şifrelenecek dosya adı: "
		read eskidosya 
		zip -e -r $yenidosya.zip $eskidosya
		echo "Tamamlandı";;
	5)python3 çeşit.py;;
	6)cd -
		./Çalıştır.sh;;
	*)echo "Yanlış Bir değer girdiniz..." 
		exit;;




esac 
