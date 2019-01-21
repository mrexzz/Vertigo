import itertools
seçenek = input("başlamak için Enter'a basınız: ")
if (seçenek == ""):
                    enaz_uzunluk = int(input("En az uzunluk değerini giriniz: "))
                    ençok_uzunluk = int(input("En çok uzunluk değerini giriniz: "))
                    karakter = input("Algoritma için karakterler giriniz: ")
                    file = open("/root/Desktop/wordlist.txt", "w")
                    for i in range(enaz_uzunluk, ençok_uzunluk + 1):
                        for x in itertools.product(karakter, repeat=i):
                            string = ''.join(x)
                            file.write(string)
                            file.write("\n")
                    print("Dosya dolduruldu...")
                    file.close()
                    exit()

else:
                    exit()

try:
                    print("Kurtarma kodu çalışıyor...")

except:
                    print("sistemden çıkılıyor...")
                    exit()
