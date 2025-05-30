number = 12294
revNumber = 0
while number > 0:
    revNumber = number * 10
    revNumber = revNumber + number % 10
    number = number / 10
    print("number var : ",number,"\nrevNumber var : ",revNumber)