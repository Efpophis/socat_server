#!/bin/bash

# tuner
/usr/bin/socat tcp-listen:50000,reuseaddr,ignoreeof,fork file:/dev/ttyUSB0,nonblock,waitlock=/var/run/socat_tuner/tty1.lock,b38400,raw,echo=0

