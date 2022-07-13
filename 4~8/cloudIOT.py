from time import sleep
import urllib.request 

Key="RFK5MVPQPDLOT7JA"
Url = 'https://api.thingspeak.com/update?api_key=%s' %Key
acc = [0, 0] 

while True: 
	try:
		urllib.request.urlopen(Url + "&field1=%s&field2=%s" %(acc[0],acc[1]))
		print(acc)
		acc[0] = (acc[0] + 1) % 10
		acc[1] = (acc[1] + 1) % 10
		sleep(15)

	except Exception as err:
		print(err)