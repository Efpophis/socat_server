# amp relay
socat tcp-listen:51000,reuseaddr,fork file:/dev/ttyUSB0,nonblock,waitlock=/var/run/tty0.lock,b9600,raw,echo=0

# tuner
#socat tcp-listen:50000,reuseaddr,fork file:/dev/ttyUSB1,nonblock,waitlock=/var/run/tty1.lock,b38400,raw,echo=0 &

