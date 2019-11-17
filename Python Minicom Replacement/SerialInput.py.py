# This is a Functioning Version of our Minicom Python replacement script
# Added webservice functionality

#!/usr/bin/env python

import serial
from flask import Flask, render_template
import time
import threading

curr_temp = 0

app = Flask("appmain")
#ser = serial.Serial("/dev/ttyUSB1", 9600, timeout=2)

@app.route("/")
def appmain():
	global curr_temp
	#print("web",curr_temp, file=sys.stderr)
	return render_template("index.html", variable = curr_temp)

def serial_start():
	global curr_temp
	#print("ser",curr_temp, file=sys.stderr)
	run_flag = True
	alarm_flag = False
	while (run_flag):
		#serial_out = ser.readline()
		#using the conversion temperature = (analog - 100) / 10
		#current_temp = (int(serial_out) - 100) / 10
		curr_temp += 1
		time.sleep(1)
		
if __name__ == "__main__" :
	thread = threading.Thread(target = serial_start, args = () )
	thread.start()
	app.run(debug=True)
	