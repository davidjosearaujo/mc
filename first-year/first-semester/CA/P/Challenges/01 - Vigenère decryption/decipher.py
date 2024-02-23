import string

# Kasiski Method

text = open("Texts/1.txt", "r").read()

## Find largest repeatable string 
a = 0
l = 2
results = []
while True:
    count = 0
    
    test = text[a:l]
    
    count = text.count(test)

    if count > 1:
        l += 1
        continue
    
    results.append(test[:-1])
    
    a += len(test)
    l = a+2
    
    if a+l >= len(text):
        break
    
# Largest repeated substrings
newresults = sorted(results, key=lambda item: len(item))

print(newresults)