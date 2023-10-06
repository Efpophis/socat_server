#!/bin/bash

# amp relay
/usr/bin/socat tcp-listen:51000,reuseaddr,ignoreeof,fork file:/dev/ttyUSB0,nonblock,waitlock=/var/run/tty0.lock,b9600,raw,echo=0


