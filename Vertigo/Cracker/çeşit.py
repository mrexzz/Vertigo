print("-----------------------")
print("Çeşitler:MD5-SHA256-SHA1")
print("-----------------------")
a = input("Hash:")
b = len(a)
if(b == 32):
	print("---------------")
	print("Hash MD5'dir")
	print("---------------")
elif(b == 40):
	print("---------------")
	print("Hash SHA-1'dir")
	print("---------------")
elif(b == 64):
	print("---------------")
	print("Hash SHA-256'dır")
	print("---------------")
else:
	print("Hash türü bilinmiyor...")

	


