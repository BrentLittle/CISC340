import serial, string
from gpiozero import LED


gpioPins = [LED(x) for x in range(2,10)]

output = " "
ser = serial.Serial('/dev/ttyUSB0', 4800, 8, 'N', 1, timeout=1)
while True:
  print("----")
  while output != "":
    output = ser.readline()
    print(output)
    for pin in gpioPins:
        pin.off()
    gpioPins[0].on()
