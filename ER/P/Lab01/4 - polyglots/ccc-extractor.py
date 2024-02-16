from Crypto.Cipher import AES, DES3

with open('ccc.jpg', "rb") as f:
	d = f.read()

	da =  AES.new(b'EncryptWithAES!!',  AES.MODE_CBC, b'TB\x85\xcf\xdb\xb7\x9d\xb27\xc7\x12\xe8\xafa\x18 ').encrypt(d)
	d2 =  AES.new(b'AESbutDIFFkey ;)',  AES.MODE_CBC, b' O\x9d\x05Fo4\xa4\x00\x8a\x1b\x9a\xee\x8cR<'      ).encrypt(d)
	dd = DES3.new(b'DecryptWithDES3!', DES3.MODE_CBC, b'\xaa\xf8H\x97\x86\xd6\xd7\xc9'                    ).decrypt(d)

	with open("encrypted_AES.png", "wb") as fa:
		fa.write(da)

	with open("encrypted_AES2.flv", "wb") as fa:
		fa.write(d2)

	with open("decrypted_3DES.pdf", "wb") as fd:
		fd.write(dd)
