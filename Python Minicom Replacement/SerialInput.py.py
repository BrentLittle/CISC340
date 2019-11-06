# This is a Functioning Version of our Minicom Python replacement script

#!/usr/bin/env python
import serial

ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=2)

while 1:
 print ser.readline()
