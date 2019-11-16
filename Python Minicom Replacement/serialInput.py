#!/usr/bin/env python
import serial
ser = serial.Serial("/dev/ttyUBS1", 9600, timeout=2)

while 1:
    armed = ser.readline()
    temp = int(ser.readline())/10 -10
    print armed
    print temp
