from emailverify import EmailListVerifyOne

print(
    "---------------------------------------"
    "README.TXT'yi OKU"
    "---------------------------------------"
)
mail = open("file.txt", "r+")
cevap = open("cevap.txt", "r+")
kalan = 100
for i in mail:
    E = EmailListVerifyOne('APİ_KEY', '{0}'.format(i))
    result = E.control()

    if (result == "ok"):
            cevap.write("{0}".format(i))
            print('{0} ------> OK'.format(i))
            kalan -=1

    else:
            print("{0} ------> YOK".format(i))
            kalan -= 1

print("Kalan kullanım sayısı: " + str(kalan))

if(kalan == "0"):
        print("Hakkız Bitti..")




