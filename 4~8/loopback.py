import serial

ser = serial.Serial('/dev/rfcomm0', 115200)
ser.flushInput()

try :
	while True:
		c = ser.read()
		ser.write(c)
		if c == b'x': break
		c=char(c)
		print(c)

		
except KeyboardInterrupt :
	ser.close()