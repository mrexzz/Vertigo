import requests
import os


with open("admin.txt","r+") as file2:
    a = file2.read()
    b = len(a)
    if(b == 0 ):
        d = input("Panel Dork'u eklemek istiyor musun?(E/H)").upper()
        if(d == "E" or "EVET"):
            e = input("Seçenek:")
            ile2.write(e)
        elif(d == "H" or "Hayır"):
            print("Çıkıldı[*]")
        else:
            print("")
    else:
        print("Dosyalar kontrol ediliyor[*]")


site = str(input("Site:"))
file = open("admin.txt","r+")
for i in file:
    response = requests.get('http://{0}/{1}'.format(site,i))
    if(response.status_code == 200 or response.status_code == 302):
            print("VAR[*] ---> " + i)
    elif(response.status_code == 404):
            print("Yok ---> " + i)
    else:
            print("Problem")

try:
  print("HATA").lower()
except():
  exit()


