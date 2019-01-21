import sys
import os
import itertools
import time
import datetime
import hashlib
import base64
print("--------------------")
print("1.MD5\n2.Base64\t3.Sha256")
print("--------------------")
print("Not:wordlist'i şifre kırıcıyla aynı dizine atınız:)")
print("--------------------")
kullanıcı_giriş = input("Yapmak istediğiniz işlemi seçiniz: ")
class Z0ne():
    if(kullanıcı_giriş == "1"):
        başlangıç = time.time()
        md = input("MD5 Hash: ")
        if len(md) != 32:
            print("Bu MD5 şifresi değil.")
        else:
            liste = input("Wordlist: ")
            ac = open(liste).readlines()
            with open(liste, 'rb') as ac:
                for line in ac:
                    line = line.rstrip(b'\n')
                    hs = hashlib.md5(line).hexdigest()
                    if hs == md:
                        print("şifre kırıldı : ", line.decode('utf-8'))

        print("Programın çalışma süresi: %s" % (float(time.time() - başlangıç)))


    elif(kullanıcı_giriş == "2"):
     d = input("Hash: ")
     e = base64.b64decode(d)
     print("Decode:%s"% e)

    elif(kullanıcı_giriş == "3"):
        başlangıç = time.time()
        md = input("SHA256 Hash: ")
        if len(md) != 64:
            print("Bu Sha256 şifresi değil.")
        else:
            liste = input("Wordlist: ")
            ac = open(liste).readlines()
            with open(liste, 'rb') as ac:
                for line in ac:
                    line = line.rstrip(b'\n')
                    hs = hashlib.sha256(line).hexdigest()
                    if hs == md:
                        print("şifre kırıldı : ", line.decode('utf-8'))

        print("Programın çalışma süresi: %s" % (float(time.time() - başlangıç)))


      
	
	
