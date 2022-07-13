import time
import urllib.request 
import adafruit_dht
import board
Key="RFK5MVPQPDLOT7JA"
Url = 'https://api.thingspeak.com/update?api_key=%s' %Key

dhtDevice = adafruit_dht.DHT22(board.D21)

while True: 
	humidity= dhtDevice.humidity
	temp=dhtDevice.temperature 
	urllib.request.urlopen(Url + "&field1=%d&field2=%d" %(temp, humidity))
	
	s = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time()))
	s = s + " 온도 = %d C, 습도 = %d %%" %(temp, humidity)
	
	print(s)
	time.sleep(15)
