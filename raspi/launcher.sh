#!/bin/sh
# launcher.sh
# navigate to home directory, then to this directory, then execute python script, then back home

sleep 20
cd /
cd /home/goon/Desktop/flask-video-streaming
flask run --host=192.168.8.100
cd /
