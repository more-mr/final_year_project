from flask import Flask, render_template, Response
from picamera import PiCamera
from time import sleep
from gpiozero import DistanceSensor , MotionSensor
import requests
from sendEmail import callMe

pir = MotionSensor(4)
#ultrasonic = DistanceSensor(echo = 17, trigger = 4)
camera = PiCamera()
i=1

while True:
        pir.wait_for_motion()
#        print(ultrasonic.distance)
#        print("moved")
        i = i + 1
#        print(i)

        if i > 60000: # 0.3 > ultrasonic.distance:
#                print("sleeping")
                sleep(3)
#                print("cam on")
                camera.start_preview()
                sleep(3)
                camera.capture('/home/goon/Desktop/image.jpg')
#                print("save")
                camera.stop_preview()
                sleep(3)
#                print("stop cam")
#                print("clear")
                i = 0
                
                callMe()
                
                url = 'http://192.168.8.101:5000/facerestore/restore'
                files = {'imageFile': open('../image.jpg' , 'rb')}
                requests.post(url, files = files)
#                print("sent")
