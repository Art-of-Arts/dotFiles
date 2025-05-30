number = 12294

while number > 0:
    revNumber = revNumber * 10
    revNumber = revNumber + number % 10
    number = number / 10
    print("number var : ",number,"\nrevNumber var : ",revNumber)