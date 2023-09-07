#!/bin/bash

# tuner
/usr/bin/socat tcp-listen:50000,reuseaddr,fork file:/dev/ttyUSB1,nonblock,waitlock=/var/run/tty1.lock,b38400,raw,echo=0

