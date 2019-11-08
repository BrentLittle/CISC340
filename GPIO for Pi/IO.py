# This program is designed to output 4 bits from the pins found 
# below to jb pmod port in the following order:

#  Pi Port (BCM)  -->  jb Port
#  18 --> JB1:A14
#  17 --> JB2:A16
#  27 --> JB3:B15
#  22 --> JB3:B16

# is everything is hooke dup correctly then when using TeraTerm to analyze
# the output coming from the BASYS3 board you shoudl see that the last 
# digit of the jbin line will go from 1 to 2 to 4 to 8. In reality 
# we woudl make it go to any number between 0 and F due to there 
# being 16 different possibilities with 4 bits 

import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

onePin = 18
twoPin = 17
fourPin = 27
eightPin = 22

GPIO.setup(onePin, GPIO.OUT)
GPIO.setup(twoPin, GPIO.OUT)
GPIO.setup(fourPin,GPIO.OUT)
GPIO.setup(eightPin, GPIO.OUT)

# display 0
GPIO.output(onePin, GPIO.LOW)
GPIO.output(twoPin, GPIO.LOW)
GPIO.output(fourPin, GPIO.LOW)
GPIO.output(eightPin, GPIO.LOW)
time.sleep(2)

#display 1
GPIO.output(onePin, GPIO.HIGH)
GPIO.output(twoPin, GPIO.LOW)
GPIO.output(fourPin, GPIO.LOW)
GPIO.output(eightPin, GPIO.LOW)
time.sleep(5)

#display 2
GPIO.output(onePin, GPIO.LOW)
GPIO.output(twoPin, GPIO.HIGH)
GPIO.output(fourPin, GPIO.LOW)
GPIO.output(eightPin, GPIO.LOW)
time.sleep(5)

#display 4
GPIO.output(onePin, GPIO.LOW)
GPIO.output(twoPin, GPIO.LOW)
GPIO.output(fourPin, GPIO.HIGH)
GPIO.output(eightPin, GPIO.LOW)
time.sleep(5)

#diaply 8
GPIO.output(onePin, GPIO.LOW)
GPIO.output(twoPin, GPIO.LOW)
GPIO.output(fourPin, GPIO.LOW)
GPIO.output(eightPin, GPIO.HIGH)
time.sleep(5)

GPIO.cleanup()
