# This is a Functioning Version of our Minicom Python replacement script
# Added webservice functionality

#!/usr/bin/env python

import serial
from flask import Flask, render_template

app = Flask(appmain)
ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=2)

@app.route("/")
def appmain():
	return render_template(index.html)

def serial_start():
	run_flag = True
	alarm_flag = False
	while (run_flag):
		serial_out = ser.readline()
		#using the conversion temperature = (analog - 100) / 10
		current_temp = (int(serial_out) - 100) / 10
 
 if __name__ = "__main__":
	app.run(deblug=true, host="0.0.0.0", port=6969)
	#serial_start()