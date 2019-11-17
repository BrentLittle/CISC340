#!/usr/bin/env python
from __future__ import print_function # In python 2.7
import sys
import serial
from flask import Flask, render_template
import time
from gpiozero import LED
import threading


app = Flask("appmain")
temp = 0
isCel = 0
isAlarm = 0

@app.route("/")
def appmain():
	global temp
	global isCel
	global isAlarm
	if isCel == 0:
		celFlag = "C"
	else:
		celFlag = "F"
	if isAlarm == 0:
		alarmFlag = "OFF"
	else:
		alarmFlag = "ON"

	return render_template("index.html", var1 = temp, var2 = celFlag, var3 = alarmFlag)

def serial_start(ser):
	gpioPinsFirstNumber = [LED(x) for x in [5,6,13,19]]
	secondPins = [LED(x) for x in [4,17,27,22]]
	i = 0
	while i < 100:
		i += 1
		global temp
		global isCel
		global isAlarm

		isCel = ser.readline()
		isAlarm = ser.readline()
		temp = int(ser.readline()) * 0.2 + 8
		
		if int(isCel) == 0:
			temp = (temp - 32) // 1.8
			
		firstDigit = temp // 10
		secondDigit = temp % 10
		
		for pin in gpioPinsFirstNumber:
			pin.on()
		for pin in secondPins:
			pin.on()
		if firstDigit == 9:
			gpioPinsFirstNumber[1].off()
			gpioPinsFirstNumber[2].off()
		elif firstDigit == 8:
			gpioPinsFirstNumber[1].off()
			gpioPinsFirstNumber[2].off()
			gpioPinsFirstNumber[3].off()
		elif firstDigit == 7:
			gpioPinsFirstNumber[0].off()
		elif firstDigit == 6:
			gpioPinsFirstNumber[0].off()
			gpioPinsFirstNumber[3].off()
		elif firstDigit == 5:
			gpioPinsFirstNumber[0].off()
			gpioPinsFirstNumber[2].off()
		elif firstDigit == 4:
			gpioPinsFirstNumber[0].off()
			gpioPinsFirstNumber[2].off()
			gpioPinsFirstNumber[3].off()
		elif firstDigit == 3:
			gpioPinsFirstNumber[0].off()
			gpioPinsFirstNumber[1].off()
		elif firstDigit == 2:
			gpioPinsFirstNumber[0].off()
			gpioPinsFirstNumber[1].off()
			gpioPinsFirstNumber[3].off()
		elif firstDigit == 1:
			gpioPinsFirstNumber[0].off()
			gpioPinsFirstNumber[1].off()
			gpioPinsFirstNumber[2].off()
		else:
			gpioPinsFirstNumber[0].off()
			gpioPinsFirstNumber[1].off()
			gpioPinsFirstNumber[2].off()
			gpioPinsFirstNumber[3].off()
		
		if secondDigit == 9:
			secondPins[1].off()
			secondPins[2].off()
		elif secondDigit == 8:
			secondPins[1].off()
			secondPins[2].off()
			secondPins[3].off()
		elif secondDigit == 7:
			secondPins[0].off()
		elif secondDigit == 6:
			secondPins[0].off()
			secondPins[3].off()
		elif secondDigit == 5:
			secondPins[0].off()
			secondPins[2].off()
		elif secondDigit == 4:
			secondPins[0].off()
			secondPins[2].off()
			secondPins[3].off()
		elif secondDigit == 3:
			secondPins[0].off()
			secondPins[1].off()
		elif secondDigit == 2:
			secondPins[0].off()
			secondPins[1].off()
			secondPins[3].off()
		elif secondDigit == 1:
			secondPins[0].off()
			secondPins[1].off()
			secondPins[2].off()
		else:
			secondPins[0].off()
			secondPins[1].off()
			secondPins[2].off()
			secondPins[3].off()
			
		time.sleep(1.5)

if __name__ == "__main__" :
	ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=2)
	thread = threading.Thread(target = serial_start, args = (ser, ) )
	thread.start()
	app.run(debug=True)