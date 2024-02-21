import os

data = "My data records!"
f = open("file.txt", "w")

#os.unlink("file.txt") 

f.write(data)
f.close()