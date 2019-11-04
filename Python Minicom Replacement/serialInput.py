#!/usr/bin/env python
import serial

ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=3)
count = 0
while True:
        x = ser.readline()
        x = x[:-1]
        if(count ==  0): # Button State
                count = count + 1
                print("BS = " + x[-8:])
        elif(count == 1): # jbin, digin, rpiin
                count = count + 1
                copy1 = x
                copy2 = x
                print("JP = "+x[8:16])
                print("DIG = "+ copy1[25:33])
                print("RPI = "+ copy2[42:51])
        elif(count == 2): # VAUX14
                count = count + 1
                print("VAUX14 = "+x[-4:])
        elif(count == 3): # VAUX07
                count = count + 1
                print("VAUX07 = "+x[-4:])
        elif(count == 4): # VAUX15
                count = count + 1
                print("VAUX15 = "+x[-4:])
        elif(count == 5): # VAUX06
                count = count + 1
                print("VAUX06 = "+x[-4:])
        else: # Extra Line read IN
                count = 0
                print("")

#import serial

#ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=2)

#while 1:
# print ser.readline()
