#!/usr/bin/env python
import serial
import time
from gpiozero import LED
ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=2)
gpioPinsFirstNumber = [LED(x) for x in [5,6,13,19]]
secondPins = [LED(x) for x in [4,17,27,22]]
while 1:
    isCel = ser.readline()
    isAlarm = ser.readline()
    temp = int(ser.readline())*0.2 + 8
    if int(isCel) == 0:
        temp = (temp-32)//1.8
    firstDigit = temp //10
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
    time.sleep(0.7)
