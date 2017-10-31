import serial

'''ser = serial.Serial(port='/dev/ttyUSB0', baudrate=921600, parity='N', rtscts=True)'''
ser = serial.Serial(port='COM3', baudrate=115200, bytesize=8, parity='N', rtscts=True)
f = open('x.txt', 'r');
for line in f:
	line = line.strip()
	nbytes = ser.write(line.decode('hex'))
	print "Sent feature: " + line
	recv = ser.read(nbytes)
	print "Received feature: " + recv.encode('hex')
	recv = ser.read(nbytes)
	print "Received weight: " + recv.encode('hex')
	
