import socket
c = input("IP adresi: ")
a = socket.gethostbyaddr("%s" %c)
b = a[0]
print(b)
print("----------------------------")
print("Beta,test amaçlı")
print("----------------------------")




